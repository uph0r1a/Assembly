section .data
    arr     dd 1, 3, 1, 1, 4    
    goal    dd 1                
    msg     db "0", 10          

section .text
    global _start               

_start:

    xor rcx, rcx                
    xor rbx, rbx               

loop_start:
    cmp rcx, 5                  
    jge loop_end               

    mov eax, [arr + rcx*4]     
                               
    cmp eax, [goal]             
    jne skip_inc                

    inc rbx                     

skip_inc:
    inc rcx                    
    jmp loop_start              

loop_end:
    mov al, bl                  
    add al, '0'                 
    mov [msg], al               

    mov rax, 1                  
    mov rdi, 1                 
    mov rsi, msg              
    mov rdx, 2                 
    syscall                    

    mov rax, 60                
    xor rdi, rdi              
    syscall                    










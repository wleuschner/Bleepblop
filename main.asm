org 100h

mov al,13h
int 10h
les bx,[bx]

palloop:
mov dx,0x3c9
out dx,al    ; write red value (0..63)
out dx,al    ; write green value (0..63)
out dx,al    ; write blue value (0..63)
inc ax
jnz short palloop

mainloop:

add al,ah
and al,ah
xor ax,cx
stosb
loop mainloop

out 0x42,al
out 0x61,al

dec ah
jmp short mainloop

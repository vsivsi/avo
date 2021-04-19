// Code generated by command: go run asm.go -out stadtx.s -stubs stub.go. DO NOT EDIT.

#include "textflag.h"

// func Hash(state *State, key []byte) uint64
TEXT ·Hash(SB), NOSPLIT, $0-40
	MOVQ  state+0(FP), AX
	MOVQ  key_base+8(FP), CX
	MOVQ  key_len+16(FP), DX
	MOVQ  (AX), BX
	MOVQ  8(AX), SI
	MOVQ  DX, DI
	ADDQ  $0x00000001, DI
	MOVQ  $0xb89b0f8e1655514f, R8
	IMULQ R8, DI
	XORQ  DI, BX
	MOVQ  DX, DI
	ADDQ  $0x00000002, DI
	MOVQ  $0x8c6f736011bd5127, R8
	IMULQ R8, DI
	XORQ  DI, SI
	CMPQ  DX, $0x00000020
	JGE   coreLong
	MOVQ  DX, DI
	SHRQ  $0x03, DI
	CMPQ  DI, $0x00000000
	JE    shortCore0
	CMPQ  DI, $0x00000001
	JE    shortCore1
	CMPQ  DI, $0x00000002
	JE    shortCore2
	CMPQ  DI, $0x00000003
	JE    shortCore3

shortCore3:
	MOVQ  (CX), AX
	MOVQ  $0x9c1b8e1e9628323f, DI
	IMULQ DI, AX
	ADDQ  AX, BX
	RORQ  $0x11, BX
	XORQ  SI, BX
	RORQ  $0x35, SI
	ADDQ  BX, SI
	ADDQ  $0x00000008, CX
	SUBQ  $0x00000008, DX

shortCore2:
	MOVQ  (CX), AX
	MOVQ  $0x9c1b8e1e9628323f, DI
	IMULQ DI, AX
	ADDQ  AX, BX
	RORQ  $0x11, BX
	XORQ  SI, BX
	RORQ  $0x35, SI
	ADDQ  BX, SI
	ADDQ  $0x00000008, CX
	SUBQ  $0x00000008, DX

shortCore1:
	MOVQ  (CX), AX
	MOVQ  $0x9c1b8e1e9628323f, DI
	IMULQ DI, AX
	ADDQ  AX, BX
	RORQ  $0x11, BX
	XORQ  SI, BX
	RORQ  $0x35, SI
	ADDQ  BX, SI
	ADDQ  $0x00000008, CX
	SUBQ  $0x00000008, DX

shortCore0:
	CMPQ DX, $0x00000000
	JE   shortTail0
	CMPQ DX, $0x00000001
	JE   shortTail1
	CMPQ DX, $0x00000002
	JE   shortTail2
	CMPQ DX, $0x00000003
	JE   shortTail3
	CMPQ DX, $0x00000004
	JE   shortTail4
	CMPQ DX, $0x00000005
	JE   shortTail5
	CMPQ DX, $0x00000006
	JE   shortTail6
	CMPQ DX, $0x00000007
	JE   shortTail7

shortTail7:
	MOVBQZX 6(CX), DX
	SHLQ    $0x20, DX
	ADDQ    DX, BX

shortTail6:
	MOVBQZX 5(CX), DX
	SHLQ    $0x30, DX
	ADDQ    DX, SI

shortTail5:
	MOVBQZX 4(CX), DX
	SHLQ    $0x10, DX
	ADDQ    DX, BX

shortTail4:
	MOVLQZX (CX), DX
	ADDQ    DX, SI
	JMP     shortAfter

shortTail3:
	MOVBQZX 2(CX), DX
	SHLQ    $0x30, DX
	ADDQ    DX, BX

shortTail2:
	MOVWQZX (CX), DX
	ADDQ    DX, SI
	JMP     shortAfter

shortTail1:
	MOVBQZX (CX), DX
	ADDQ    DX, BX

shortTail0:
	RORQ $0x20, SI
	XORQ $0x000000ff, SI

shortAfter:
	XORQ BX, SI
	RORQ $0x21, BX
	ADDQ SI, BX
	ROLQ $0x11, SI
	XORQ BX, SI
	ROLQ $0x2b, BX
	ADDQ SI, BX
	ROLQ $0x1f, SI
	SUBQ BX, SI
	ROLQ $0x0d, BX
	XORQ SI, BX
	SUBQ BX, SI
	ROLQ $0x29, BX
	ADDQ SI, BX
	ROLQ $0x25, SI
	XORQ BX, SI
	RORQ $0x27, BX
	ADDQ SI, BX
	RORQ $0x0f, SI
	ADDQ BX, SI
	ROLQ $0x0f, BX
	XORQ SI, BX
	RORQ $0x05, SI
	XORQ SI, BX
	MOVQ BX, ret+32(FP)
	RET

coreLong:
	MOVQ  16(AX), R8
	MOVQ  24(AX), AX
	MOVQ  DX, DI
	ADDQ  $0x00000003, DI
	MOVQ  $0x8f29bd94edce7b39, R9
	IMULQ R9, DI
	XORQ  DI, R8
	MOVQ  DX, DI
	ADDQ  $0x00000004, DI
	MOVQ  $0x9c1b8e1e9628323f, R9
	IMULQ R9, DI
	XORQ  DI, AX

block:
	MOVQ  (CX), DI
	MOVQ  $0x00000000802910e3, R9
	IMULQ R9, DI
	ADDQ  DI, BX
	ROLQ  $0x39, BX
	XORQ  AX, BX
	MOVQ  8(CX), DI
	MOVQ  $0x00000000819b13af, R9
	IMULQ R9, DI
	ADDQ  DI, SI
	ROLQ  $0x3f, SI
	XORQ  R8, SI
	MOVQ  16(CX), DI
	MOVQ  $0x0000000091cb27e5, R9
	IMULQ R9, DI
	ADDQ  DI, R8
	RORQ  $0x2f, R8
	ADDQ  BX, R8
	MOVQ  24(CX), DI
	MOVQ  $0x00000000c1a269c1, R9
	IMULQ R9, DI
	ADDQ  DI, AX
	RORQ  $0x0b, AX
	SUBQ  SI, AX
	ADDQ  $0x00000020, CX
	SUBQ  $0x00000020, DX
	CMPQ  DX, $0x00000020
	JGE   block
	MOVQ  DX, R9
	MOVQ  DX, DI
	SHRQ  $0x03, DI
	CMPQ  DI, $0x00000000
	JE    longCore0
	CMPQ  DI, $0x00000001
	JE    longCore1
	CMPQ  DI, $0x00000002
	JE    longCore2
	CMPQ  DI, $0x00000003
	JE    longCore3

longCore3:
	MOVQ  (CX), DI
	MOVQ  $0x00000000802910e3, R10
	IMULQ R10, DI
	ADDQ  DI, BX
	ROLQ  $0x39, BX
	XORQ  AX, BX
	ADDQ  $0x00000008, CX
	SUBQ  $0x00000008, DX

longCore2:
	MOVQ  (CX), DI
	MOVQ  $0x00000000819b13af, R10
	IMULQ R10, DI
	ADDQ  DI, SI
	ROLQ  $0x3f, SI
	XORQ  R8, SI
	ADDQ  $0x00000008, CX
	SUBQ  $0x00000008, DX

longCore1:
	MOVQ  (CX), DI
	MOVQ  $0x0000000091cb27e5, R10
	IMULQ R10, DI
	ADDQ  DI, R8
	RORQ  $0x2f, R8
	ADDQ  BX, R8
	ADDQ  $0x00000008, CX
	SUBQ  $0x00000008, DX

longCore0:
	RORQ  $0x0b, AX
	SUBQ  SI, AX
	ADDQ  $0x00000001, R9
	MOVQ  $0x9c1b8e1e9628323f, DI
	IMULQ DI, R9
	XORQ  R9, BX
	CMPQ  DX, $0x00000000
	JE    longTail0
	CMPQ  DX, $0x00000001
	JE    longTail1
	CMPQ  DX, $0x00000002
	JE    longTail2
	CMPQ  DX, $0x00000003
	JE    longTail3
	CMPQ  DX, $0x00000004
	JE    longTail4
	CMPQ  DX, $0x00000005
	JE    longTail5
	CMPQ  DX, $0x00000006
	JE    longTail6
	CMPQ  DX, $0x00000007
	JE    longTail7

longTail7:
	MOVBQZX 6(CX), DX
	ADDQ    DX, SI

longTail6:
	MOVWQZX 4(CX), DX
	ADDQ    DX, R8
	MOVLQZX (CX), DX
	ADDQ    DX, AX
	JMP     longAfter

longTail5:
	MOVBQZX 4(CX), DX
	ADDQ    DX, SI

longTail4:
	MOVLQZX (CX), DX
	ADDQ    DX, R8
	JMP     longAfter

longTail3:
	MOVBQZX 2(CX), DX
	ADDQ    DX, AX

longTail2:
	MOVWQZX (CX), DX
	ADDQ    DX, SI
	JMP     longAfter

longTail1:
	MOVBQZX (CX), DX
	ADDQ    DX, R8

longTail0:
	ROLQ $0x20, AX
	XORQ $0x000000ff, AX

longAfter:
	SUBQ R8, SI
	RORQ $0x13, BX
	SUBQ BX, SI
	RORQ $0x35, SI
	XORQ SI, AX
	SUBQ AX, BX
	ROLQ $0x2b, AX
	ADDQ AX, BX
	RORQ $0x03, BX
	SUBQ BX, AX
	RORQ $0x2b, R8
	SUBQ AX, R8
	ROLQ $0x37, R8
	XORQ BX, R8
	SUBQ R8, SI
	RORQ $0x07, AX
	SUBQ R8, AX
	RORQ $0x1f, R8
	ADDQ R8, AX
	SUBQ SI, R8
	RORQ $0x27, AX
	XORQ AX, R8
	RORQ $0x11, AX
	XORQ R8, AX
	ADDQ AX, SI
	RORQ $0x09, SI
	XORQ SI, R8
	ROLQ $0x18, R8
	XORQ R8, AX
	RORQ $0x3b, AX
	RORQ $0x01, BX
	SUBQ SI, BX
	XORQ SI, BX
	XORQ AX, R8
	XORQ R8, BX
	MOVQ BX, ret+32(FP)
	RET

	.file	"Arduino-usbserial.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.text.RingBuffer_Remove,"ax",@progbits
	.type	RingBuffer_Remove, @function
RingBuffer_Remove:
.LFB72:
.LSM0:
.LVL0:
/* prologue: function */
/* frame size = 0 */
	movw r18,r24
.LSM1:
	movw r26,r24
	subi r26,lo8(-(130))
	sbci r27,hi8(-(130))
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ld r20,Z+
.LVL1:
.LSM2:
	adiw r26,1
	st X,r31
	st -X,r30
	subi r24,lo8(-(128))
	sbci r25,hi8(-(128))
.LVL2:
	cp r30,r24
	cpc r31,r25
	brne .L2
.LSM3:
	st X+,r18
	st X,r19
.L2:
.LBB105:
.LSM4:
	in r25,__SREG__
.LVL3:
.LBB106:
.LBB107:
.LSM5:
/* #APP */
 ;  50 "c:/winavr-20100110/lib/gcc/../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE107:
.LBE106:
.LSM6:
	movw r30,r18
	subi r30,lo8(-(132))
	sbci r31,hi8(-(132))
	ld r24,Z
	subi r24,lo8(-(-1))
	st Z,r24
.LBB108:
.LBB109:
.LSM7:
	out __SREG__,r25
.LSM8:
.LBE109:
.LBE108:
.LBE105:
.LSM9:
	mov r24,r20
/* epilogue start */
	ret
.LFE72:
	.size	RingBuffer_Remove, .-RingBuffer_Remove
	.section	.text.EVENT_CDC_Device_LineEncodingChanged,"ax",@progbits
.global	EVENT_CDC_Device_LineEncodingChanged
	.type	EVENT_CDC_Device_LineEncodingChanged, @function
EVENT_CDC_Device_LineEncodingChanged:
.LFB89:
.LSM10:
.LVL4:
	push r13
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
.LSM11:
	ldd r24,Z+20
.LVL5:
	cpi r24,lo8(1)
	breq .L6
	cpi r24,lo8(2)
	brne .L19
	rjmp .L21
.L6:
	ldi r20,lo8(48)
	mov r13,r20
.LVL6:
	rjmp .L8
.LVL7:
.L19:
	clr r13
.LVL8:
	rjmp .L8
.LVL9:
.L21:
	ldi r19,lo8(32)
	mov r13,r19
.LVL10:
.L8:
.LSM12:
	ldd r24,Z+19
	cpi r24,lo8(2)
	brne .L9
.LSM13:
	ldi r24,lo8(8)
	or r13,r24
.L9:
.LSM14:
	ldd r24,Z+21
	cpi r24,lo8(7)
	breq .L12
	cpi r24,lo8(8)
	breq .L13
	cpi r24,lo8(6)
	brne .L10
.LSM15:
	ldi r24,lo8(2)
	rjmp .L20
.L12:
.LSM16:
	ldi r24,lo8(4)
	rjmp .L20
.L13:
.LSM17:
	ldi r24,lo8(6)
.L20:
	or r13,r24
.L10:
.LSM18:
	sts 201,__zero_reg__
.LSM19:
	sts 200,__zero_reg__
.LSM20:
	sts 202,__zero_reg__
.LSM21:
	ldd r14,Z+15
	ldd r15,Z+16
	ldd r16,Z+17
	ldd r17,Z+18
	ldi r24,lo8(57600)
	cp r14,r24
	ldi r24,hi8(57600)
	cpc r15,r24
	ldi r24,hlo8(57600)
	cpc r16,r24
	ldi r24,hhi8(57600)
	cpc r17,r24
	brne .L14
	ldi r18,lo8(16)
	ldi r19,hi8(16)
	rjmp .L15
.L14:
	movw r24,r16
	movw r22,r14
	lsr r25
	ror r24
	ror r23
	ror r22
	subi r22,lo8(-(2000000))
	sbci r23,hi8(-(2000000))
	sbci r24,hlo8(-(2000000))
	sbci r25,hhi8(-(2000000))
	movw r20,r16
	movw r18,r14
	call __udivmodsi4
.LVL11:
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
.LVL12:
.L15:
	sts (204)+1,r19
	sts 204,r18
.LSM22:
	sts 202,r13
.LSM23:
	ldi r24,lo8(57600)
	cp r14,r24
	ldi r24,hi8(57600)
	cpc r15,r24
	ldi r24,hlo8(57600)
	cpc r16,r24
	ldi r24,hhi8(57600)
	cpc r17,r24
	breq .L16
	ldi r24,lo8(2)
	rjmp .L17
.L16:
	ldi r24,lo8(0)
.L17:
	sts 200,r24
.LSM24:
	ldi r24,lo8(-104)
	sts 201,r24
/* epilogue start */
.LSM25:
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL13:
	ret
.LFE89:
	.size	EVENT_CDC_Device_LineEncodingChanged, .-EVENT_CDC_Device_LineEncodingChanged
	.section	.text.__vector_23,"ax",@progbits
.global	__vector_23
	.type	__vector_23, @function
__vector_23:
.LFB90:
.LSM26:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
.LSM27:
	lds r25,206
.LVL14:
.LSM28:
	in r24,62-32
	cpi r24,lo8(4)
	brne .L25
.LBB110:
.LBB111:
.LSM29:
	lds r30,USARTtoUSB_Buffer+128
	lds r31,(USARTtoUSB_Buffer+128)+1
	st Z,r25
.LSM30:
	lds r30,USARTtoUSB_Buffer+128
	lds r31,(USARTtoUSB_Buffer+128)+1
	movw r24,r30
	adiw r24,1
	sts (USARTtoUSB_Buffer+128)+1,r25
	sts USARTtoUSB_Buffer+128,r24
	subi r24,lo8(USARTtoUSB_Buffer+128)
	sbci r25,hi8(USARTtoUSB_Buffer+128)
	brne .L24
.LSM31:
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	std Z+2,r25
	std Z+1,r24
.L24:
.LBB112:
.LSM32:
	in r25,__SREG__
.LVL15:
.LBB113:
.LBB114:
.LSM33:
/* #APP */
 ;  50 "c:/winavr-20100110/lib/gcc/../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE114:
.LBE113:
.LSM34:
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(1))
	sts USARTtoUSB_Buffer+132,r24
.LBB115:
.LBB116:
.LSM35:
	out __SREG__,r25
.LSM36:
.LVL16:
.L25:
/* epilogue start */
.LBE116:
.LBE115:
.LBE112:
.LBE111:
.LBE110:
.LSM37:
	pop r31
	pop r30
	pop r25
.LVL17:
	pop r24
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.LFE90:
	.size	__vector_23, .-__vector_23
	.section	.text.EVENT_CDC_Device_ControLineStateChanged,"ax",@progbits
.global	EVENT_CDC_Device_ControLineStateChanged
	.type	EVENT_CDC_Device_ControLineStateChanged, @function
EVENT_CDC_Device_ControLineStateChanged:
.LFB91:
.LSM38:
.LVL18:
/* prologue: function */
/* frame size = 0 */
.LSM39:
	movw r30,r24
	ldd r24,Z+13
.LVL19:
	sbrs r24,0
	rjmp .L27
.LSM40:
	cbi 43-32,7
	ret
.L27:
.LSM41:
	sbi 43-32,7
	ret
.LFE91:
	.size	EVENT_CDC_Device_ControLineStateChanged, .-EVENT_CDC_Device_ControLineStateChanged
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB88:
.LSM42:
/* prologue: function */
/* frame size = 0 */
.LSM43:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_ProcessControlRequest
/* epilogue start */
.LSM44:
	ret
.LFE88:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.EVENT_USB_Device_ConfigurationChanged,"ax",@progbits
.global	EVENT_USB_Device_ConfigurationChanged
	.type	EVENT_USB_Device_ConfigurationChanged, @function
EVENT_USB_Device_ConfigurationChanged:
.LFB87:
.LSM45:
/* prologue: function */
/* frame size = 0 */
.LSM46:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_ConfigureEndpoints
/* epilogue start */
.LSM47:
	ret
.LFE87:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB86:
.LSM48:
/* prologue: function */
/* frame size = 0 */
.LSM49:
	in r24,84-32
	andi r24,lo8(-9)
	out 84-32,r24
.LSM50:
	ldi r18,lo8(24)
/* #APP */
 ;  143 "Arduino-usbserial.c" 1
	in __tmp_reg__, __SREG__
	cli
	sts 96, r18
	sts 96, __zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
/* #NOAPP */
.LBB117:
.LBB118:
.LSM51:
	ldi r24,lo8(103)
	ldi r25,hi8(103)
	sts (204)+1,r25
	sts 204,r24
.LSM52:
	ldi r24,lo8(6)
	sts 202,r24
.LSM53:
	sts 200,__zero_reg__
.LSM54:
	sts 201,r18
.LSM55:
	sbi 42-32,3
.LSM56:
	sbi 43-32,2
.LBE118:
.LBE117:
.LBB119:
.LBB120:
.LSM57:
	in r24,42-32
	ori r24,lo8(48)
	out 42-32,r24
.LSM58:
	in r24,43-32
	ori r24,lo8(48)
	out 43-32,r24
.LBE120:
.LBE119:
.LSM59:
	call USB_Init
.LSM60:
	ldi r24,lo8(4)
	out 69-32,r24
.LSM61:
	sbi 43-32,7
.LSM62:
	sbi 42-32,7
/* epilogue start */
.LSM63:
	ret
.LFE86:
	.size	SetupHardware, .-SetupHardware
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB85:
.LSM64:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
.LSM65:
	call SetupHardware
.LBB121:
.LBB122:
.LBB123:
.LSM66:
	in r18,__SREG__
.LBB124:
.LBB125:
.LSM67:
/* #APP */
 ;  50 "c:/winavr-20100110/lib/gcc/../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE125:
.LBE124:
.LSM68:
	ldi r24,lo8(USBtoUSART_Buffer)
	ldi r25,hi8(USBtoUSART_Buffer)
	sts (USBtoUSART_Buffer+128)+1,r25
	sts USBtoUSART_Buffer+128,r24
.LSM69:
	sts (USBtoUSART_Buffer+130)+1,r25
	sts USBtoUSART_Buffer+130,r24
.LBB126:
.LBB127:
.LSM70:
	out __SREG__,r18
.LSM71:
.LBE127:
.LBE126:
.LBE123:
.LBE122:
.LBE121:
.LBB128:
.LBB129:
.LBB130:
.LSM72:
	in r18,__SREG__
.LBB131:
.LBB132:
.LSM73:
/* #APP */
 ;  50 "c:/winavr-20100110/lib/gcc/../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE132:
.LBE131:
.LSM74:
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	sts (USARTtoUSB_Buffer+128)+1,r25
	sts USARTtoUSB_Buffer+128,r24
.LSM75:
	sts (USARTtoUSB_Buffer+130)+1,r25
	sts USARTtoUSB_Buffer+130,r24
.LBB133:
.LBB134:
.LSM76:
	out __SREG__,r18
.LSM77:
.LBE134:
.LBE133:
.LBE130:
.LBE129:
.LBE128:
.LSM78:
/* #APP */
 ;  87 "Arduino-usbserial.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.LBB135:
.LBB136:
.LBB137:
.LBB138:
.LSM79:
	ldi r28,lo8(USBtoUSART_Buffer)
	ldi r29,hi8(USBtoUSART_Buffer)
.LBE138:
.LBE137:
.LBE136:
.LSM80:
	ldi r16,lo8(3)
.LVL20:
.L46:
.LBB146:
.LBB147:
.LBB148:
.LBB149:
.LBB150:
.LSM81:
	in r24,__SREG__
.LBB151:
.LBB152:
.LSM82:
/* #APP */
 ;  50 "c:/winavr-20100110/lib/gcc/../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE152:
.LBE151:
.LSM83:
	lds r25,USBtoUSART_Buffer+132
.LVL21:
.LBB153:
.LBB154:
.LSM84:
	out __SREG__,r24
.LSM85:
.LBE154:
.LBE153:
.LBE150:
.LBE149:
.LBE148:
.LBE147:
.LBE146:
.LSM86:
	cpi r25,lo8(-128)
	breq .L37
.LBB155:
.LSM87:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_ReceiveByte
.LVL22:
.LSM88:
	sbrc r25,7
	rjmp .L37
.LVL23:
.LBB145:
.LBB144:
.LSM89:
	lds r30,USBtoUSART_Buffer+128
	lds r31,(USBtoUSART_Buffer+128)+1
	st Z,r24
.LSM90:
	lds r30,USBtoUSART_Buffer+128
	lds r31,(USBtoUSART_Buffer+128)+1
	movw r24,r30
.LVL24:
	adiw r24,1
	sts (USBtoUSART_Buffer+128)+1,r25
	sts USBtoUSART_Buffer+128,r24
	subi r24,lo8(USBtoUSART_Buffer+128)
	sbci r25,hi8(USBtoUSART_Buffer+128)
	brne .L38
.LSM91:
	std Z+2,r29
	std Z+1,r28
.L38:
.LBB139:
.LSM92:
	in r25,__SREG__
.LBB140:
.LBB141:
.LSM93:
/* #APP */
 ;  50 "c:/winavr-20100110/lib/gcc/../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE141:
.LBE140:
.LSM94:
	lds r24,USBtoUSART_Buffer+132
	subi r24,lo8(-(1))
	sts USBtoUSART_Buffer+132,r24
.LBB142:
.LBB143:
.LSM95:
	out __SREG__,r25
.LSM96:
.LVL25:
.L37:
.LBE143:
.LBE142:
.LBE139:
.LBE144:
.LBE145:
.LBE155:
.LBB156:
.LBB157:
.LBB158:
.LSM97:
	in r24,__SREG__
.LVL26:
.LBB159:
.LBB160:
.LSM98:
/* #APP */
 ;  50 "c:/winavr-20100110/lib/gcc/../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE160:
.LBE159:
.LSM99:
	lds r17,USARTtoUSB_Buffer+132
.LBB161:
.LBB162:
.LSM100:
	out __SREG__,r24
.LSM101:
.LBE162:
.LBE161:
.LBE158:
.LBE157:
.LBE156:
.LSM102:
	sbic 53-32,0
	rjmp .L39
	cpi r17,lo8(97)
	brlo .L40
.L39:
.LSM103:
	sbi 53-32,0
.LSM104:
	lds r24,USARTtoUSB_Buffer+132
	tst r24
	breq .L49
.LBB163:
.LBB164:
.LSM105:
	cbi 43-32,5
.LBE164:
.LBE163:
.LSM106:
	sts PulseMSRemaining,r16
	rjmp .L49
.L42:
.LSM107:
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	call RingBuffer_Remove
.LVL27:
	mov r22,r24
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_SendByte
	subi r17,lo8(-(-1))
.LVL28:
.L49:
.LSM108:
	tst r17
	brne .L42
.LSM109:
	lds r24,PulseMSRemaining
	tst r24
	breq .L43
	lds r24,PulseMSRemaining
	subi r24,lo8(-(-1))
	sts PulseMSRemaining,r24
	lds r24,PulseMSRemaining
	tst r24
	brne .L43
.LBB165:
.LBB166:
.LSM110:
	sbi 43-32,5
.L43:
.LBE166:
.LBE165:
.LSM111:
	lds r24,PulseMSRemaining+1
	tst r24
	breq .L40
	lds r24,PulseMSRemaining+1
	subi r24,lo8(-(-1))
	sts PulseMSRemaining+1,r24
	lds r24,PulseMSRemaining+1
	tst r24
	brne .L40
.LBB167:
.LBB168:
.LSM112:
	sbi 43-32,4
.L40:
.LBE168:
.LBE167:
.LBB169:
.LBB170:
.LBB171:
.LBB172:
.LBB173:
.LSM113:
	in r24,__SREG__
.LBB174:
.LBB175:
.LSM114:
/* #APP */
 ;  50 "c:/winavr-20100110/lib/gcc/../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE175:
.LBE174:
.LSM115:
	lds r25,USBtoUSART_Buffer+132
.LVL29:
.LBB176:
.LBB177:
.LSM116:
	out __SREG__,r24
.LSM117:
.LBE177:
.LBE176:
.LBE173:
.LBE172:
.LBE171:
.LBE170:
.LBE169:
.LSM118:
	tst r25
	breq .L44
.LSM119:
	ldi r24,lo8(USBtoUSART_Buffer)
	ldi r25,hi8(USBtoUSART_Buffer)
	call RingBuffer_Remove
.LVL30:
	mov r25,r24
.L45:
.LBB178:
.LBB179:
.LSM120:
	lds r24,200
	sbrs r24,5
	rjmp .L45
.LSM121:
	sts 206,r25
.LBE179:
.LBE178:
.LBB180:
.LBB181:
.LSM122:
	cbi 43-32,4
.LBE181:
.LBE180:
.LSM123:
	sts PulseMSRemaining+1,r16
.LVL31:
.L44:
.LSM124:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_USBTask
.LVL32:
.LSM125:
	call USB_USBTask
	rjmp .L46
.LBE135:
.LFE85:
	.size	main, .-main
.global	VirtualSerial_CDC_Interface
	.data
	.type	VirtualSerial_CDC_Interface, @object
	.size	VirtualSerial_CDC_Interface, 22
VirtualSerial_CDC_Interface:
	.byte	0
	.byte	3
	.word	64
	.byte	0
	.byte	4
	.word	64
	.byte	0
	.byte	2
	.word	8
	.byte	0
	.skip 9,0
	.comm USBtoUSART_Buffer,133,1
	.comm USARTtoUSB_Buffer,133,1
	.comm PulseMSRemaining,3,1
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -1
	.byte	0x24
	.byte	0xc
	.uleb128 0x20
	.uleb128 0x0
	.p2align	2
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.p2align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB89
	.long	.LFE89-.LFB89
	.p2align	2
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.p2align	2
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.p2align	2
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB88
	.long	.LFE88-.LFB88
	.p2align	2
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.p2align	2
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.p2align	2
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.p2align	2
.LEFDE14:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LFE72
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL4
	.long	.LVL5
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LVL11
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LFE89
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x5d
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x5d
	.long	.LVL10
	.long	.LVL13
	.word	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL14
	.long	.LVL15
	.word	0x1
	.byte	0x69
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x69
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL23
	.long	.LVL24
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL21
	.long	.LVL22
	.word	0x1
	.byte	0x69
	.long	.LVL25
	.long	.LVL27
	.word	0x1
	.byte	0x69
	.long	.LVL28
	.long	.LVL29
	.word	0x1
	.byte	0x69
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL29
	.long	.LVL30
	.word	0x1
	.byte	0x69
	.long	.LVL31
	.long	.LVL32
	.word	0x1
	.byte	0x69
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xa22
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF89
	.byte	0x1
	.long	.LASF90
	.long	.LASF91
	.long	0x0
	.long	0x0
	.long	.Ldebug_ranges0+0x30
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x6
	.byte	0x7a
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x6
	.byte	0x7b
	.long	0x4d
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x6
	.byte	0x7c
	.long	0x5f
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x6
	.byte	0x7e
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0x7
	.byte	0x73
	.long	0xc4
	.uleb128 0x7
	.long	.LASF11
	.sleb128 0
	.uleb128 0x7
	.long	.LASF12
	.sleb128 1
	.uleb128 0x7
	.long	.LASF13
	.sleb128 2
	.uleb128 0x7
	.long	.LASF14
	.sleb128 3
	.uleb128 0x7
	.long	.LASF15
	.sleb128 4
	.uleb128 0x7
	.long	.LASF16
	.sleb128 5
	.byte	0x0
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x8
	.byte	0x9c
	.long	0xe3
	.uleb128 0x7
	.long	.LASF19
	.sleb128 0
	.uleb128 0x7
	.long	.LASF20
	.sleb128 1
	.uleb128 0x7
	.long	.LASF21
	.sleb128 2
	.byte	0x0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x8
	.byte	0xa4
	.long	0x10e
	.uleb128 0x7
	.long	.LASF23
	.sleb128 0
	.uleb128 0x7
	.long	.LASF24
	.sleb128 1
	.uleb128 0x7
	.long	.LASF25
	.sleb128 2
	.uleb128 0x7
	.long	.LASF26
	.sleb128 3
	.uleb128 0x7
	.long	.LASF27
	.sleb128 4
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF28
	.uleb128 0x8
	.byte	0xd
	.byte	0x9
	.byte	0x65
	.long	0x1aa
	.uleb128 0x9
	.long	.LASF29
	.byte	0x9
	.byte	0x66
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF30
	.byte	0x9
	.byte	0x68
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF31
	.byte	0x9
	.byte	0x69
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF32
	.byte	0x9
	.byte	0x6a
	.long	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF33
	.byte	0x9
	.byte	0x6c
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF34
	.byte	0x9
	.byte	0x6d
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.long	.LASF35
	.byte	0x9
	.byte	0x6e
	.long	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF36
	.byte	0x9
	.byte	0x70
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.long	.LASF37
	.byte	0x9
	.byte	0x71
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.long	.LASF38
	.byte	0x9
	.byte	0x72
	.long	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF39
	.uleb128 0x8
	.byte	0x2
	.byte	0x9
	.byte	0x79
	.long	0x1d6
	.uleb128 0x9
	.long	.LASF40
	.byte	0x9
	.byte	0x7a
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x9
	.byte	0x7d
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x8
	.byte	0x7
	.byte	0x9
	.byte	0x84
	.long	0x217
	.uleb128 0x9
	.long	.LASF42
	.byte	0x9
	.byte	0x85
	.long	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x9
	.byte	0x86
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF44
	.byte	0x9
	.byte	0x89
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF45
	.byte	0x9
	.byte	0x8c
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x9
	.byte	0x9
	.byte	0x77
	.long	0x23c
	.uleb128 0x9
	.long	.LASF46
	.byte	0x9
	.byte	0x81
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x9
	.byte	0x8d
	.long	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x8
	.byte	0x16
	.byte	0x9
	.byte	0x63
	.long	0x261
	.uleb128 0x9
	.long	.LASF48
	.byte	0x9
	.byte	0x73
	.long	0x261
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x9
	.byte	0x90
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0xa
	.long	0x115
	.uleb128 0x3
	.long	.LASF50
	.byte	0x9
	.byte	0x93
	.long	0x23c
	.uleb128 0x8
	.byte	0x85
	.byte	0x1
	.byte	0x47
	.long	0x2b4
	.uleb128 0x9
	.long	.LASF51
	.byte	0x1
	.byte	0x48
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"In"
	.byte	0x1
	.byte	0x49
	.long	0x2c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.string	"Out"
	.byte	0x1
	.byte	0x4a
	.long	0x2c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF52
	.byte	0x1
	.byte	0x4b
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0x0
	.uleb128 0xc
	.long	0x30
	.long	0x2c4
	.uleb128 0xd
	.long	0x90
	.byte	0x7f
	.byte	0x0
	.uleb128 0xe
	.byte	0x2
	.long	0x30
	.uleb128 0x3
	.long	.LASF53
	.byte	0x1
	.byte	0x4c
	.long	0x271
	.uleb128 0x8
	.byte	0x3
	.byte	0x3
	.byte	0x2f
	.long	0x308
	.uleb128 0x9
	.long	.LASF54
	.byte	0x3
	.byte	0x30
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF55
	.byte	0x3
	.byte	0x31
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF56
	.byte	0x3
	.byte	0x32
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x2
	.byte	0x31
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x10
	.long	.LASF59
	.byte	0x2
	.byte	0x45
	.byte	0x1
	.byte	0x3
	.long	0x32e
	.uleb128 0x11
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x32e
	.byte	0x0
	.uleb128 0xe
	.byte	0x2
	.long	0x334
	.uleb128 0xa
	.long	0x30
	.uleb128 0x12
	.long	.LASF66
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x381
	.uleb128 0x13
	.long	.LASF51
	.byte	0x1
	.byte	0x6b
	.long	0x381
	.uleb128 0x14
	.long	.LASF52
	.byte	0x1
	.byte	0x6d
	.long	0x30
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF57
	.byte	0x1
	.byte	0x6f
	.long	0x30
	.uleb128 0x14
	.long	.LASF58
	.byte	0x1
	.byte	0x6f
	.long	0x30
	.uleb128 0x16
	.uleb128 0x15
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x386
	.uleb128 0xe
	.byte	0x2
	.long	0x2ca
	.uleb128 0x10
	.long	.LASF60
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.byte	0x3
	.long	0x3d0
	.uleb128 0x13
	.long	.LASF51
	.byte	0x1
	.byte	0x9e
	.long	0x381
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.byte	0x9f
	.long	0x334
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF57
	.byte	0x1
	.byte	0xa6
	.long	0x30
	.uleb128 0x14
	.long	.LASF58
	.byte	0x1
	.byte	0xa6
	.long	0x30
	.uleb128 0x16
	.uleb128 0x15
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	.LASF62
	.byte	0x4
	.byte	0x65
	.byte	0x1
	.byte	0x3
	.long	0x3f4
	.uleb128 0x13
	.long	.LASF63
	.byte	0x4
	.byte	0x63
	.long	0x3f4
	.uleb128 0x13
	.long	.LASF64
	.byte	0x4
	.byte	0x64
	.long	0x3f9
	.byte	0x0
	.uleb128 0xa
	.long	0x6d
	.uleb128 0xa
	.long	0x1aa
	.uleb128 0x18
	.long	.LASF93
	.byte	0x5
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.long	.LASF65
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3
	.long	0x440
	.uleb128 0x13
	.long	.LASF51
	.byte	0x1
	.byte	0x55
	.long	0x381
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF57
	.byte	0x1
	.byte	0x57
	.long	0x30
	.uleb128 0x14
	.long	.LASF58
	.byte	0x1
	.byte	0x57
	.long	0x30
	.uleb128 0x16
	.uleb128 0x15
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	.LASF67
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.long	0x1aa
	.byte	0x3
	.long	0x47a
	.uleb128 0x13
	.long	.LASF51
	.byte	0x1
	.byte	0x7f
	.long	0x381
	.uleb128 0x15
	.uleb128 0x17
	.long	0x34a
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x19
	.long	0x361
	.uleb128 0x19
	.long	0x36c
	.uleb128 0x16
	.uleb128 0x15
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	.LASF68
	.byte	0x5
	.byte	0x4a
	.byte	0x1
	.byte	0x3
	.long	0x493
	.uleb128 0x13
	.long	.LASF69
	.byte	0x5
	.byte	0x49
	.long	0x334
	.byte	0x0
	.uleb128 0x10
	.long	.LASF70
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.long	0x4ac
	.uleb128 0x13
	.long	.LASF69
	.byte	0x5
	.byte	0x4e
	.long	0x334
	.byte	0x0
	.uleb128 0x12
	.long	.LASF71
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x1aa
	.byte	0x3
	.long	0x4e6
	.uleb128 0x13
	.long	.LASF51
	.byte	0x1
	.byte	0x90
	.long	0x381
	.uleb128 0x15
	.uleb128 0x17
	.long	0x34a
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x19
	.long	0x361
	.uleb128 0x19
	.long	0x36c
	.uleb128 0x16
	.uleb128 0x15
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	.LASF72
	.byte	0x4
	.byte	0x8d
	.byte	0x1
	.byte	0x3
	.long	0x4ff
	.uleb128 0x13
	.long	.LASF73
	.byte	0x4
	.byte	0x8c
	.long	0x4ff
	.byte	0x0
	.uleb128 0xa
	.long	0x10e
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	0x30
	.long	.LFB72
	.long	.LFE72
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x582
	.uleb128 0x1b
	.long	.LASF51
	.byte	0x1
	.byte	0xb6
	.long	0x381
	.long	.LLST1
	.uleb128 0x1c
	.long	.LASF61
	.byte	0x1
	.byte	0xb8
	.long	0x30
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x1c
	.long	.LASF57
	.byte	0x1
	.byte	0xbd
	.long	0x30
	.byte	0x1
	.byte	0x69
	.uleb128 0x14
	.long	.LASF58
	.byte	0x1
	.byte	0xbd
	.long	0x30
	.uleb128 0x1e
	.long	0x308
	.long	.LBB106
	.long	.LBE106
	.byte	0x1
	.byte	0xbd
	.uleb128 0x1f
	.long	0x315
	.long	.LBB108
	.long	.LBE108
	.byte	0x1
	.byte	0xbd
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF76
	.byte	0x3
	.byte	0xaf
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x5b9
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x3
	.byte	0xae
	.long	0x5b9
	.long	.LLST3
	.uleb128 0x21
	.long	.LASF75
	.byte	0x3
	.byte	0xb0
	.long	0x30
	.long	.LLST4
	.byte	0x0
	.uleb128 0xa
	.long	0x5be
	.uleb128 0xe
	.byte	0x2
	.long	0x266
	.uleb128 0x20
	.byte	0x1
	.long	.LASF77
	.byte	0x3
	.byte	0xdf
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x63e
	.uleb128 0x21
	.long	.LASF78
	.byte	0x3
	.byte	0xe0
	.long	0x30
	.long	.LLST6
	.uleb128 0x1f
	.long	0x38c
	.long	.LBB110
	.long	.LBE110
	.byte	0x3
	.byte	0xe3
	.uleb128 0x17
	.long	0x3a4
	.uleb128 0x17
	.long	0x399
	.uleb128 0x1d
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x19
	.long	0x3b0
	.uleb128 0x19
	.long	0x3bb
	.uleb128 0x1e
	.long	0x308
	.long	.LBB113
	.long	.LBE113
	.byte	0x1
	.byte	0xa6
	.uleb128 0x1f
	.long	0x315
	.long	.LBB115
	.long	.LBE115
	.byte	0x1
	.byte	0xa6
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF79
	.byte	0x3
	.byte	0xeb
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x671
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x3
	.byte	0xea
	.long	0x5b9
	.long	.LLST8
	.uleb128 0x14
	.long	.LASF80
	.byte	0x3
	.byte	0xec
	.long	0x1aa
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF81
	.byte	0x3
	.byte	0xa6
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x22
	.byte	0x1
	.long	.LASF82
	.byte	0x3
	.byte	0xa0
	.byte	0x1
	.long	.LFB87
	.long	.LFE87
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x20
	.byte	0x1
	.long	.LASF83
	.byte	0x3
	.byte	0x8c
	.byte	0x1
	.long	.LFB86
	.long	.LFE86
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x6df
	.uleb128 0x23
	.long	0x3d0
	.long	.LBB117
	.long	.LBE117
	.byte	0x3
	.byte	0x92
	.long	0x6cf
	.uleb128 0x17
	.long	0x3e8
	.uleb128 0x17
	.long	0x3dd
	.byte	0x0
	.uleb128 0x1e
	.long	0x3fe
	.long	.LBB119
	.long	.LBE119
	.byte	0x3
	.byte	0x93
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF95
	.byte	0x3
	.byte	0x51
	.byte	0x1
	.long	0x4d
	.long	.LFB85
	.long	.LFE85
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x9d8
	.uleb128 0x23
	.long	0x407
	.long	.LBB121
	.long	.LBE121
	.byte	0x3
	.byte	0x54
	.long	0x74c
	.uleb128 0x17
	.long	0x414
	.uleb128 0x1d
	.long	.LBB123
	.long	.LBE123
	.uleb128 0x19
	.long	0x420
	.uleb128 0x19
	.long	0x42b
	.uleb128 0x1e
	.long	0x308
	.long	.LBB124
	.long	.LBE124
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	0x315
	.long	.LBB126
	.long	.LBE126
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x407
	.long	.LBB128
	.long	.LBE128
	.byte	0x3
	.byte	0x55
	.long	0x79d
	.uleb128 0x17
	.long	0x414
	.uleb128 0x1d
	.long	.LBB130
	.long	.LBE130
	.uleb128 0x19
	.long	0x420
	.uleb128 0x19
	.long	0x42b
	.uleb128 0x1e
	.long	0x308
	.long	.LBB131
	.long	.LBE131
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	0x315
	.long	.LBB133
	.long	.LBE133
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	.LBB135
	.long	.LBE135
	.uleb128 0x1c
	.long	.LASF84
	.byte	0x3
	.byte	0x66
	.long	0x30
	.byte	0x1
	.byte	0x61
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x0
	.long	0x81a
	.uleb128 0x21
	.long	.LASF78
	.byte	0x3
	.byte	0x5e
	.long	0x42
	.long	.LLST13
	.uleb128 0x26
	.long	0x38c
	.long	.Ldebug_ranges0+0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x17
	.long	0x3a4
	.uleb128 0x17
	.long	0x399
	.uleb128 0x1d
	.long	.LBB139
	.long	.LBE139
	.uleb128 0x19
	.long	0x3b0
	.uleb128 0x19
	.long	0x3bb
	.uleb128 0x1e
	.long	0x308
	.long	.LBB140
	.long	.LBE140
	.byte	0x1
	.byte	0xa6
	.uleb128 0x1f
	.long	0x315
	.long	.LBB142
	.long	.LBE142
	.byte	0x1
	.byte	0xa6
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x440
	.long	.LBB146
	.long	.LBE146
	.byte	0x3
	.byte	0x5c
	.long	0x88e
	.uleb128 0x1f
	.long	0x339
	.long	.LBB148
	.long	.LBE148
	.byte	0x1
	.byte	0x81
	.uleb128 0x17
	.long	0x34a
	.uleb128 0x1d
	.long	.LBB149
	.long	.LBE149
	.uleb128 0x27
	.long	0x355
	.long	.LLST14
	.uleb128 0x1d
	.long	.LBB150
	.long	.LBE150
	.uleb128 0x19
	.long	0x361
	.uleb128 0x19
	.long	0x36c
	.uleb128 0x1e
	.long	0x308
	.long	.LBB151
	.long	.LBE151
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1f
	.long	0x315
	.long	.LBB153
	.long	.LBE153
	.byte	0x1
	.byte	0x6f
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x339
	.long	.LBB156
	.long	.LBE156
	.byte	0x3
	.byte	0x66
	.long	0x8e9
	.uleb128 0x17
	.long	0x34a
	.uleb128 0x1d
	.long	.LBB157
	.long	.LBE157
	.uleb128 0x1d
	.long	.LBB158
	.long	.LBE158
	.uleb128 0x19
	.long	0x361
	.uleb128 0x19
	.long	0x36c
	.uleb128 0x1e
	.long	0x308
	.long	.LBB159
	.long	.LBE159
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1f
	.long	0x315
	.long	.LBB161
	.long	.LBE161
	.byte	0x1
	.byte	0x6f
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x47a
	.long	.LBB163
	.long	.LBE163
	.byte	0x3
	.byte	0x6c
	.long	0x902
	.uleb128 0x17
	.long	0x487
	.byte	0x0
	.uleb128 0x23
	.long	0x493
	.long	.LBB165
	.long	.LBE165
	.byte	0x3
	.byte	0x76
	.long	0x91b
	.uleb128 0x17
	.long	0x4a0
	.byte	0x0
	.uleb128 0x23
	.long	0x493
	.long	.LBB167
	.long	.LBE167
	.byte	0x3
	.byte	0x7a
	.long	0x934
	.uleb128 0x17
	.long	0x4a0
	.byte	0x0
	.uleb128 0x23
	.long	0x4ac
	.long	.LBB169
	.long	.LBE169
	.byte	0x3
	.byte	0x7e
	.long	0x9a8
	.uleb128 0x1f
	.long	0x339
	.long	.LBB171
	.long	.LBE171
	.byte	0x1
	.byte	0x92
	.uleb128 0x17
	.long	0x34a
	.uleb128 0x1d
	.long	.LBB172
	.long	.LBE172
	.uleb128 0x27
	.long	0x355
	.long	.LLST15
	.uleb128 0x1d
	.long	.LBB173
	.long	.LBE173
	.uleb128 0x19
	.long	0x361
	.uleb128 0x19
	.long	0x36c
	.uleb128 0x1e
	.long	0x308
	.long	.LBB174
	.long	.LBE174
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1f
	.long	0x315
	.long	.LBB176
	.long	.LBE176
	.byte	0x1
	.byte	0x6f
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x4e6
	.long	.LBB178
	.long	.LBE178
	.byte	0x3
	.byte	0x7f
	.long	0x9c1
	.uleb128 0x17
	.long	0x4f3
	.byte	0x0
	.uleb128 0x1f
	.long	0x47a
	.long	.LBB180
	.long	.LBE180
	.byte	0x3
	.byte	0x81
	.uleb128 0x17
	.long	0x487
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LASF85
	.byte	0x3
	.byte	0x28
	.long	0x2ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer
	.uleb128 0x28
	.long	.LASF86
	.byte	0x3
	.byte	0x2b
	.long	0x2ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0x28
	.long	.LASF87
	.byte	0x3
	.byte	0x33
	.long	0xa0e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PulseMSRemaining
	.uleb128 0x29
	.long	0x2d5
	.uleb128 0x28
	.long	.LASF88
	.byte	0x3
	.byte	0x39
	.long	0x266
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x146
	.word	0x2
	.long	.Ldebug_info0
	.long	0xa26
	.long	0x582
	.string	"EVENT_CDC_Device_LineEncodingChanged"
	.long	0x5c4
	.string	"__vector_23"
	.long	0x63e
	.string	"EVENT_CDC_Device_ControLineStateChanged"
	.long	0x671
	.string	"EVENT_USB_Device_UnhandledControlRequest"
	.long	0x685
	.string	"EVENT_USB_Device_ConfigurationChanged"
	.long	0x699
	.string	"SetupHardware"
	.long	0x6df
	.string	"main"
	.long	0x9d8
	.string	"USBtoUSART_Buffer"
	.long	0x9ea
	.string	"USARTtoUSB_Buffer"
	.long	0x9fc
	.string	"PulseMSRemaining"
	.long	0xa13
	.string	"VirtualSerial_CDC_Interface"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x54
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.long	.LFB89
	.long	.LFE89-.LFB89
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB88
	.long	.LFE88-.LFB88
	.long	.LFB87
	.long	.LFE87-.LFB87
	.long	.LFB86
	.long	.LFE86-.LFB86
	.long	.LFB85
	.long	.LFE85-.LFB85
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB136
	.long	.LBE136
	.long	.LBB155
	.long	.LBE155
	.long	0x0
	.long	0x0
	.long	.LBB137
	.long	.LBE137
	.long	.LBB145
	.long	.LBE145
	.long	0x0
	.long	0x0
	.long	.Ltext0
	.long	.Letext0
	.long	.LFB72
	.long	.LFE72
	.long	.LFB89
	.long	.LFE89
	.long	.LFB90
	.long	.LFE90
	.long	.LFB91
	.long	.LFE91
	.long	.LFB88
	.long	.LFE88
	.long	.LFB87
	.long	.LFE87
	.long	.LFB86
	.long	.LFE86
	.long	.LFB85
	.long	.LFE85
	.long	0x0
	.long	0x0
	.section	.debug_line
	.long	.LELT0-.LSLT0
.LSLT0:
	.word	0x2
	.long	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"../../LUFA/Drivers/Peripheral"
	.byte	0
	.ascii	"../../LUFA/Drivers/USB/Class/Device"
	.byte	0
	.ascii	"../../LUFA/Drivers/USB/Class/Device/../Common"
	.byte	0
	.ascii	"../../LUFA/Drivers/USB/HighLevel/../LowLevel"
	.byte	0
	.ascii	"c:/winavr-20100110/lib/gcc/../../avr/include"
	.byte	0
	.ascii	"c:/winavr-20100110/lib/gcc/../../avr/include/util"
	.byte	0
	.ascii	"Lib"
	.byte	0
	.ascii	"Board"
	.byte	0
	.byte	0x0
	.string	"LightweightRingBuff.h"
	.uleb128 0x7
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/atomic.h"
	.uleb128 0x5
	.uleb128 0x0
	.uleb128 0x0
	.string	"Arduino-usbserial.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.string	"Serial.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"LEDs.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdint.h"
	.uleb128 0x5
	.uleb128 0x0
	.uleb128 0x0
	.string	"Device.h"
	.uleb128 0x4
	.uleb128 0x0
	.uleb128 0x0
	.string	"../Common/CDC.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"CDC.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM0
	.byte	0xca
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM1
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM2
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM3
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM4
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM5
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -139
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM6
	.byte	0x4
	.uleb128 0x1
	.byte	0xa1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM7
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -121
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM8
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM9
	.byte	0x4
	.uleb128 0x1
	.byte	0x90
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE72
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM10
	.byte	0x4
	.uleb128 0x3
	.byte	0xc2
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM11
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM12
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM13
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM14
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM15
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM16
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM17
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM18
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM19
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM20
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM21
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM22
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM23
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM24
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM25
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE89
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM26
	.byte	0x4
	.uleb128 0x3
	.byte	0xf2
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM27
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM28
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM29
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -65
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM30
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM31
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM32
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM33
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -116
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM34
	.byte	0x4
	.uleb128 0x1
	.byte	0x8a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM35
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -98
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM36
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM37
	.byte	0x4
	.uleb128 0x3
	.byte	0xb1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE90
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM38
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 234
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM39
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM40
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM41
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE91
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM42
	.byte	0x4
	.uleb128 0x3
	.byte	0xb9
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM43
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM44
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE88
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM45
	.byte	0x4
	.uleb128 0x3
	.byte	0xb3
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM46
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM47
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE87
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM48
	.byte	0x4
	.uleb128 0x3
	.byte	0x9f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM49
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM50
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM51
	.byte	0x4
	.uleb128 0x4
	.byte	0x3
	.sleb128 -41
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM52
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM53
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM54
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM55
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM56
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM57
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -40
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM58
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM59
	.byte	0x4
	.uleb128 0x3
	.byte	0x62
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM60
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM61
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM62
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM63
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE86
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM64
	.byte	0x4
	.uleb128 0x3
	.byte	0x64
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM65
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM66
	.byte	0x4
	.uleb128 0x1
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM67
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -37
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM68
	.byte	0x4
	.uleb128 0x1
	.byte	0x3b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM69
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM70
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM71
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM72
	.byte	0x4
	.uleb128 0x1
	.byte	0x24
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM73
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -37
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM74
	.byte	0x4
	.uleb128 0x1
	.byte	0x3b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM75
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM76
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM77
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM78
	.byte	0x4
	.uleb128 0x3
	.byte	0x24
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM79
	.byte	0x4
	.uleb128 0x1
	.byte	0x61
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM80
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -55
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM81
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM82
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -61
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM83
	.byte	0x4
	.uleb128 0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM84
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM85
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM86
	.byte	0x4
	.uleb128 0x3
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM87
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM88
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM89
	.byte	0x4
	.uleb128 0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM90
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM91
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM92
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM93
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -116
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM94
	.byte	0x4
	.uleb128 0x1
	.byte	0x8a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM95
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -98
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM96
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM97
	.byte	0x4
	.uleb128 0x1
	.byte	0x3c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM98
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -61
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM99
	.byte	0x4
	.uleb128 0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM100
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM101
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM102
	.byte	0x4
	.uleb128 0x3
	.byte	0x34
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM103
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM104
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM105
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -32
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM106
	.byte	0x4
	.uleb128 0x3
	.byte	0x36
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM107
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM108
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM109
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM110
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -37
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM111
	.byte	0x4
	.uleb128 0x3
	.byte	0x3d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM112
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -41
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM113
	.byte	0x4
	.uleb128 0x1
	.byte	0x33
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM114
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -61
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM115
	.byte	0x4
	.uleb128 0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM116
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM117
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM118
	.byte	0x4
	.uleb128 0x3
	.byte	0x4b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM119
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM120
	.byte	0x4
	.uleb128 0x4
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM121
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM122
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -68
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM123
	.byte	0x4
	.uleb128 0x3
	.byte	0x4b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM124
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM125
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE85
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF94:
	.string	"RingBuffer_Remove"
.LASF88:
	.string	"VirtualSerial_CDC_Interface"
.LASF93:
	.string	"LEDs_Init"
.LASF92:
	.string	"__iCliRetVal"
.LASF77:
	.string	"__vector_23"
.LASF10:
	.string	"long long unsigned int"
.LASF71:
	.string	"RingBuffer_IsEmpty"
.LASF11:
	.string	"DEVICE_STATE_Unattached"
.LASF13:
	.string	"DEVICE_STATE_Default"
.LASF3:
	.string	"int16_t"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF42:
	.string	"BaudRateBPS"
.LASF63:
	.string	"BaudRate"
.LASF23:
	.string	"CDC_PARITY_None"
.LASF62:
	.string	"Serial_Init"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"RxLEDPulse"
.LASF54:
	.string	"TxLEDPulse"
.LASF43:
	.string	"CharFormat"
.LASF35:
	.string	"DataOUTEndpointDoubleBank"
.LASF4:
	.string	"uint16_t"
.LASF17:
	.string	"USB_Device_States_t"
.LASF30:
	.string	"DataINEndpointNumber"
.LASF69:
	.string	"LEDMask"
.LASF89:
	.string	"GNU C 4.3.3"
.LASF41:
	.string	"DeviceToHost"
.LASF58:
	.string	"__ToDo"
.LASF5:
	.string	"unsigned int"
.LASF86:
	.string	"USARTtoUSB_Buffer"
.LASF27:
	.string	"CDC_PARITY_Space"
.LASF8:
	.string	"long unsigned int"
.LASF18:
	.string	"CDC_LineEncodingFormats_t"
.LASF26:
	.string	"CDC_PARITY_Mark"
.LASF57:
	.string	"sreg_save"
.LASF19:
	.string	"CDC_LINEENCODING_OneStopBit"
.LASF68:
	.string	"LEDs_TurnOnLEDs"
.LASF15:
	.string	"DEVICE_STATE_Configured"
.LASF22:
	.string	"CDC_LineEncodingParity_t"
.LASF48:
	.string	"Config"
.LASF81:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF60:
	.string	"RingBuffer_Insert"
.LASF34:
	.string	"DataOUTEndpointSize"
.LASF16:
	.string	"DEVICE_STATE_Suspended"
.LASF29:
	.string	"ControlInterfaceNumber"
.LASF24:
	.string	"CDC_PARITY_Odd"
.LASF67:
	.string	"RingBuffer_IsFull"
.LASF31:
	.string	"DataINEndpointSize"
.LASF33:
	.string	"DataOUTEndpointNumber"
.LASF52:
	.string	"Count"
.LASF21:
	.string	"CDC_LINEENCODING_TwoStopBits"
.LASF91:
	.ascii	"C:\\Users\\johnny\\works"
	.string	"pace\\johnnyr\\RAMBo\\LUFA-100807\\Projects\\arduino-usbserial-UMtest"
.LASF36:
	.string	"NotificationEndpointNumber"
.LASF14:
	.string	"DEVICE_STATE_Addressed"
.LASF12:
	.string	"DEVICE_STATE_Powered"
.LASF32:
	.string	"DataINEndpointDoubleBank"
.LASF78:
	.string	"ReceivedByte"
.LASF75:
	.string	"ConfigMask"
.LASF83:
	.string	"SetupHardware"
.LASF84:
	.string	"BufferCount"
.LASF39:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF64:
	.string	"DoubleSpeed"
.LASF37:
	.string	"NotificationEndpointSize"
.LASF66:
	.string	"RingBuffer_GetCount"
.LASF70:
	.string	"LEDs_TurnOffLEDs"
.LASF7:
	.string	"uint32_t"
.LASF25:
	.string	"CDC_PARITY_Even"
.LASF28:
	.string	"char"
.LASF49:
	.string	"State"
.LASF80:
	.string	"CurrentDTRState"
.LASF85:
	.string	"USBtoUSART_Buffer"
.LASF20:
	.string	"CDC_LINEENCODING_OneAndAHalfStopBits"
.LASF79:
	.string	"EVENT_CDC_Device_ControLineStateChanged"
.LASF56:
	.string	"PingPongLEDPulse"
.LASF46:
	.string	"ControlLineStates"
.LASF87:
	.string	"PulseMSRemaining"
.LASF59:
	.string	"__iRestore"
.LASF65:
	.string	"RingBuffer_InitBuffer"
.LASF53:
	.string	"RingBuff_t"
.LASF90:
	.string	"Arduino-usbserial.c"
.LASF47:
	.string	"LineEncoding"
.LASF51:
	.string	"Buffer"
.LASF45:
	.string	"DataBits"
.LASF2:
	.string	"uint8_t"
.LASF61:
	.string	"Data"
.LASF38:
	.string	"NotificationEndpointDoubleBank"
.LASF82:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF74:
	.string	"CDCInterfaceInfo"
.LASF44:
	.string	"ParityType"
.LASF76:
	.string	"EVENT_CDC_Device_LineEncodingChanged"
.LASF73:
	.string	"DataByte"
.LASF95:
	.string	"main"
.LASF72:
	.string	"Serial_TxByte"
.LASF50:
	.string	"USB_ClassInfo_CDC_Device_t"
.LASF40:
	.string	"HostToDevice"
.global __do_copy_data
.global __do_clear_bss

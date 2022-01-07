
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char EOC ;
 scalar_t__ PAR_DATA ;
 unsigned char WrAddr ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void
write_reg_byte(short port, unsigned char reg, unsigned char value)
{
 unsigned char outval;

 outb(EOC | reg, port + PAR_DATA);
 outval = WrAddr | reg;
 outb(outval, port + PAR_DATA);
 outb(outval, port + PAR_DATA);

 outb((outval & 0xf0) | (value & 0x0f), port + PAR_DATA);
 outb(value & 0x0f, port + PAR_DATA);
 value >>= 4;
 outb(value, port + PAR_DATA);
 outb(0x10 | value, port + PAR_DATA);
 outb(0x10 | value, port + PAR_DATA);

 outb(EOC | value, port + PAR_DATA);
}

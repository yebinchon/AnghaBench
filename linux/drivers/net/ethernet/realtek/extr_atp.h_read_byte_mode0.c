
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Ctrl_HNibRead ;
 int Ctrl_LNibRead ;
 scalar_t__ PAR_CONTROL ;
 scalar_t__ PAR_STATUS ;
 int inbyte (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline unsigned char read_byte_mode0(short ioaddr)
{
 unsigned char low_nib;

 outb(Ctrl_LNibRead, ioaddr + PAR_CONTROL);
 inbyte(ioaddr + PAR_STATUS);
 low_nib = (inbyte(ioaddr + PAR_STATUS) >> 3) & 0x0f;
 outb(Ctrl_HNibRead, ioaddr + PAR_CONTROL);
 inbyte(ioaddr + PAR_STATUS);
 inbyte(ioaddr + PAR_STATUS);
 return low_nib | ((inbyte(ioaddr + PAR_STATUS) << 1) & 0xf0);
}

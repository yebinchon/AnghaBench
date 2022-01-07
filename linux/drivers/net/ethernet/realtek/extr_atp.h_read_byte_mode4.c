
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HNib ;
 int MAR ;
 scalar_t__ PAR_DATA ;
 scalar_t__ PAR_STATUS ;
 int RdAddr ;
 int inbyte (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static inline unsigned char read_byte_mode4(short ioaddr)
{
 unsigned char low_nib;

 outb(RdAddr | MAR, ioaddr + PAR_DATA);
 low_nib = (inbyte(ioaddr + PAR_STATUS) >> 3) & 0x0f;
 outb(RdAddr | HNib | MAR, ioaddr + PAR_DATA);
 return low_nib | ((inbyte(ioaddr + PAR_STATUS) << 1) & 0xf0);
}

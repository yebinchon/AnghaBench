
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct cx18 {int dummy; } ;


 int cx18_read_reg (struct cx18*,int) ;
 int cx18_write_reg (struct cx18*,int,int) ;

int cx18_av_write(struct cx18 *cx, u16 addr, u8 value)
{
 u32 reg = 0xc40000 + (addr & ~3);
 u32 mask = 0xff;
 int shift = (addr & 3) * 8;
 u32 x = cx18_read_reg(cx, reg);

 x = (x & ~(mask << shift)) | ((u32)value << shift);
 cx18_write_reg(cx, x, reg);
 return 0;
}

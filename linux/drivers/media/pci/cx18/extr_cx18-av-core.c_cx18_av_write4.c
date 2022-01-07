
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct cx18 {int dummy; } ;


 int cx18_write_reg (struct cx18*,int ,scalar_t__) ;

int cx18_av_write4(struct cx18 *cx, u16 addr, u32 value)
{
 cx18_write_reg(cx, value, 0xc40000 + addr);
 return 0;
}

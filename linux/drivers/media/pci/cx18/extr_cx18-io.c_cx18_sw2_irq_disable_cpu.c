
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18 {int dummy; } ;


 int SW2_INT_ENABLE_CPU ;
 int cx18_read_reg (struct cx18*,int ) ;
 int cx18_write_reg (struct cx18*,int,int ) ;

void cx18_sw2_irq_disable_cpu(struct cx18 *cx, u32 val)
{
 u32 r;
 r = cx18_read_reg(cx, SW2_INT_ENABLE_CPU);
 cx18_write_reg(cx, r & ~val, SW2_INT_ENABLE_CPU);
}

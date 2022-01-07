
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18 {int sw1_irq_mask; } ;


 int SW1_INT_ENABLE_PCI ;
 int cx18_read_reg (struct cx18*,int ) ;
 int cx18_write_reg (struct cx18*,int,int ) ;

void cx18_sw1_irq_disable(struct cx18 *cx, u32 val)
{
 cx->sw1_irq_mask = cx18_read_reg(cx, SW1_INT_ENABLE_PCI) & ~val;
 cx18_write_reg(cx, cx->sw1_irq_mask, SW1_INT_ENABLE_PCI);
}

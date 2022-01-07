
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_lite {scalar_t__ regs; } ;


 scalar_t__ FLITE_REG_CISTATUS ;
 int FLITE_REG_CISTATUS_IRQ_MASK ;
 int readl (scalar_t__) ;

u32 flite_hw_get_interrupt_source(struct fimc_lite *dev)
{
 u32 intsrc = readl(dev->regs + FLITE_REG_CISTATUS);
 return intsrc & FLITE_REG_CISTATUS_IRQ_MASK;
}

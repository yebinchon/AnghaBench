
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_lite {scalar_t__ regs; } ;


 scalar_t__ FLITE_REG_CISTATUS ;
 int FLITE_REG_CISTATUS_IRQ_CAM ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void flite_hw_clear_pending_irq(struct fimc_lite *dev)
{
 u32 cfg = readl(dev->regs + FLITE_REG_CISTATUS);
 cfg &= ~FLITE_REG_CISTATUS_IRQ_CAM;
 writel(cfg, dev->regs + FLITE_REG_CISTATUS);
}

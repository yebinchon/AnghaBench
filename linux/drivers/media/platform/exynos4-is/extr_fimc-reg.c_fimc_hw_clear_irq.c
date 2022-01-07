
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_dev {scalar_t__ regs; } ;


 scalar_t__ FIMC_REG_CIGCTRL ;
 int FIMC_REG_CIGCTRL_IRQ_CLR ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void fimc_hw_clear_irq(struct fimc_dev *dev)
{
 u32 cfg = readl(dev->regs + FIMC_REG_CIGCTRL);
 cfg |= FIMC_REG_CIGCTRL_IRQ_CLR;
 writel(cfg, dev->regs + FIMC_REG_CIGCTRL);
}

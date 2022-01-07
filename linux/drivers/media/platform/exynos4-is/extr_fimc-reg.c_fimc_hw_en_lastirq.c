
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_dev {scalar_t__ regs; } ;


 scalar_t__ FIMC_REG_CIOCTRL ;
 int FIMC_REG_CIOCTRL_LASTIRQ_ENABLE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void fimc_hw_en_lastirq(struct fimc_dev *dev, int enable)
{
 u32 cfg = readl(dev->regs + FIMC_REG_CIOCTRL);
 if (enable)
  cfg |= FIMC_REG_CIOCTRL_LASTIRQ_ENABLE;
 else
  cfg &= ~FIMC_REG_CIOCTRL_LASTIRQ_ENABLE;
 writel(cfg, dev->regs + FIMC_REG_CIOCTRL);
}

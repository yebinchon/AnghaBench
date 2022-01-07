
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_dev {scalar_t__ regs; } ;


 scalar_t__ FIMC_REG_CISCCTRL ;
 int FIMC_REG_CISCCTRL_SCALERSTART ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void fimc_hw_enable_scaler(struct fimc_dev *dev, bool on)
{
 u32 cfg = readl(dev->regs + FIMC_REG_CISCCTRL);
 if (on)
  cfg |= FIMC_REG_CISCCTRL_SCALERSTART;
 else
  cfg &= ~FIMC_REG_CISCCTRL_SCALERSTART;
 writel(cfg, dev->regs + FIMC_REG_CISCCTRL);
}

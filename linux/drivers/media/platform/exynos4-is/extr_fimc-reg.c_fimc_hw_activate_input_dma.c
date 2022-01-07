
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_dev {scalar_t__ regs; } ;


 scalar_t__ FIMC_REG_MSCTRL ;
 int FIMC_REG_MSCTRL_ENVID ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void fimc_hw_activate_input_dma(struct fimc_dev *dev, bool on)
{
 u32 cfg = readl(dev->regs + FIMC_REG_MSCTRL);
 if (on)
  cfg |= FIMC_REG_MSCTRL_ENVID;
 else
  cfg &= ~FIMC_REG_MSCTRL_ENVID;
 writel(cfg, dev->regs + FIMC_REG_MSCTRL);
}

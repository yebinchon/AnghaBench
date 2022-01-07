
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_dev {scalar_t__ regs; } ;


 int FIMC_REG_CIREAL_ISIZE_AUTOLOAD_EN ;
 scalar_t__ FIMC_REG_ORGISIZE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void fimc_hw_en_autoload(struct fimc_dev *dev, int enable)
{
 u32 cfg = readl(dev->regs + FIMC_REG_ORGISIZE);
 if (enable)
  cfg |= FIMC_REG_CIREAL_ISIZE_AUTOLOAD_EN;
 else
  cfg &= ~FIMC_REG_CIREAL_ISIZE_AUTOLOAD_EN;
 writel(cfg, dev->regs + FIMC_REG_ORGISIZE);
}

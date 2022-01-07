
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_lite {scalar_t__ regs; } ;


 scalar_t__ FLITE_REG_CIGCTRL ;
 int FLITE_REG_CIGCTRL_TEST_PATTERN_COLORBAR ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void flite_hw_set_test_pattern(struct fimc_lite *dev, bool on)
{
 u32 cfg = readl(dev->regs + FLITE_REG_CIGCTRL);
 if (on)
  cfg |= FLITE_REG_CIGCTRL_TEST_PATTERN_COLORBAR;
 else
  cfg &= ~FLITE_REG_CIGCTRL_TEST_PATTERN_COLORBAR;
 writel(cfg, dev->regs + FLITE_REG_CIGCTRL);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_lite {scalar_t__ regs; } ;


 scalar_t__ FLITE_REG_CIGCTRL ;
 int FLITE_REG_CIGCTRL_SWRST ;
 int FLITE_REG_CIGCTRL_SWRST_RDY ;
 int FLITE_REG_CIGCTRL_SWRST_REQ ;
 int FLITE_RESET_TIMEOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int readl (scalar_t__) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

void flite_hw_reset(struct fimc_lite *dev)
{
 unsigned long end = jiffies + msecs_to_jiffies(FLITE_RESET_TIMEOUT);
 u32 cfg;

 cfg = readl(dev->regs + FLITE_REG_CIGCTRL);
 cfg |= FLITE_REG_CIGCTRL_SWRST_REQ;
 writel(cfg, dev->regs + FLITE_REG_CIGCTRL);

 while (time_is_after_jiffies(end)) {
  cfg = readl(dev->regs + FLITE_REG_CIGCTRL);
  if (cfg & FLITE_REG_CIGCTRL_SWRST_RDY)
   break;
  usleep_range(1000, 5000);
 }

 cfg |= FLITE_REG_CIGCTRL_SWRST;
 writel(cfg, dev->regs + FLITE_REG_CIGCTRL);
}

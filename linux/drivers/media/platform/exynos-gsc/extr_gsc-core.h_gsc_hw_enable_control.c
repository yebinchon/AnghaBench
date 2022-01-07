
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_dev {scalar_t__ regs; } ;


 scalar_t__ GSC_ENABLE ;
 int GSC_ENABLE_ON ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void gsc_hw_enable_control(struct gsc_dev *dev, bool on)
{
 u32 cfg = readl(dev->regs + GSC_ENABLE);

 if (on)
  cfg |= GSC_ENABLE_ON;
 else
  cfg &= ~GSC_ENABLE_ON;

 writel(cfg, dev->regs + GSC_ENABLE);
}

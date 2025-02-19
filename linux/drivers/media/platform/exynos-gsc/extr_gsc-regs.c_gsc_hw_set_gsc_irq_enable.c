
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_dev {scalar_t__ regs; } ;


 scalar_t__ GSC_IRQ ;
 int GSC_IRQ_ENABLE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void gsc_hw_set_gsc_irq_enable(struct gsc_dev *dev, bool mask)
{
 u32 cfg;

 cfg = readl(dev->regs + GSC_IRQ);
 if (mask)
  cfg |= GSC_IRQ_ENABLE;
 else
  cfg &= ~GSC_IRQ_ENABLE;
 writel(cfg, dev->regs + GSC_IRQ);
}

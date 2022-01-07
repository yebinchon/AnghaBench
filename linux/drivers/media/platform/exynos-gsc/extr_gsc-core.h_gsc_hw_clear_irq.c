
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_dev {scalar_t__ regs; } ;


 scalar_t__ GSC_IRQ ;
 int GSC_IRQ_DONE ;
 int GSC_IRQ_OVERRUN ;
 int GSC_IRQ_STATUS_FRM_DONE_IRQ ;
 int GSC_IRQ_STATUS_OR_IRQ ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void gsc_hw_clear_irq(struct gsc_dev *dev, int irq)
{
 u32 cfg = readl(dev->regs + GSC_IRQ);
 if (irq == GSC_IRQ_OVERRUN)
  cfg |= GSC_IRQ_STATUS_OR_IRQ;
 else if (irq == GSC_IRQ_DONE)
  cfg |= GSC_IRQ_STATUS_FRM_DONE_IRQ;
 writel(cfg, dev->regs + GSC_IRQ);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_dev {scalar_t__ regs; } ;


 scalar_t__ GSC_IRQ ;
 int GSC_IRQ_DONE ;
 int GSC_IRQ_OVERRUN ;
 int GSC_IRQ_STATUS_OR_IRQ ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline int gsc_hw_get_irq_status(struct gsc_dev *dev)
{
 u32 cfg = readl(dev->regs + GSC_IRQ);
 if (cfg & GSC_IRQ_STATUS_OR_IRQ)
  return GSC_IRQ_OVERRUN;
 else
  return GSC_IRQ_DONE;

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irq_data {size_t hwirq; scalar_t__ irq; } ;
struct TYPE_3__ {int dbb_irqs; } ;
struct TYPE_4__ {int mask_work; int dbb_irqs_lock; TYPE_1__ req; } ;


 scalar_t__ IRQ_PRCMU_CA_SLEEP ;
 TYPE_2__ mb0_transfer ;
 int * prcmu_irq_bit ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void prcmu_irq_mask(struct irq_data *d)
{
 unsigned long flags;

 spin_lock_irqsave(&mb0_transfer.dbb_irqs_lock, flags);

 mb0_transfer.req.dbb_irqs &= ~prcmu_irq_bit[d->hwirq];

 spin_unlock_irqrestore(&mb0_transfer.dbb_irqs_lock, flags);

 if (d->irq != IRQ_PRCMU_CA_SLEEP)
  schedule_work(&mb0_transfer.mask_work);
}

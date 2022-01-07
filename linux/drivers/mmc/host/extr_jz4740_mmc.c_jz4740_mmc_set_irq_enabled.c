
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4740_mmc_host {unsigned int irq_mask; int lock; } ;


 int jz4740_mmc_write_irq_mask (struct jz4740_mmc_host*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void jz4740_mmc_set_irq_enabled(struct jz4740_mmc_host *host,
 unsigned int irq, bool enabled)
{
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 if (enabled)
  host->irq_mask &= ~irq;
 else
  host->irq_mask |= irq;

 jz4740_mmc_write_irq_mask(host, host->irq_mask);
 spin_unlock_irqrestore(&host->lock, flags);
}

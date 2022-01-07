
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_hsmmc_host {int flags; int irq_lock; int base; } ;


 int CIRQ_EN ;
 int HSMMC_SDIO_IRQ_ENABLED ;
 int IE ;
 int ISE ;
 int OMAP_HSMMC_WRITE (int ,int ,int ) ;
 int STAT ;
 int STAT_CLEAR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void omap_hsmmc_disable_irq(struct omap_hsmmc_host *host)
{
 u32 irq_mask = 0;
 unsigned long flags;

 spin_lock_irqsave(&host->irq_lock, flags);

 if (host->flags & HSMMC_SDIO_IRQ_ENABLED)
  irq_mask |= CIRQ_EN;
 OMAP_HSMMC_WRITE(host->base, ISE, irq_mask);
 OMAP_HSMMC_WRITE(host->base, IE, irq_mask);
 OMAP_HSMMC_WRITE(host->base, STAT, STAT_CLEAR);
 spin_unlock_irqrestore(&host->irq_lock, flags);
}

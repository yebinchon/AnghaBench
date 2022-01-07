
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxamci_host {unsigned int imask; int lock; scalar_t__ base; } ;


 scalar_t__ MMC_I_MASK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void pxamci_disable_irq(struct pxamci_host *host, unsigned int mask)
{
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 host->imask |= mask;
 writel(host->imask, host->base + MMC_I_MASK);
 spin_unlock_irqrestore(&host->lock, flags);
}

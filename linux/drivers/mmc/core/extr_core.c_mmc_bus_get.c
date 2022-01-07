
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int lock; int bus_refs; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void mmc_bus_get(struct mmc_host *host)
{
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 host->bus_refs++;
 spin_unlock_irqrestore(&host->lock, flags);
}

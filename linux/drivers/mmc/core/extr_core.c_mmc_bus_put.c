
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {scalar_t__ bus_refs; int lock; scalar_t__ bus_ops; } ;


 int __mmc_release_bus (struct mmc_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void mmc_bus_put(struct mmc_host *host)
{
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 host->bus_refs--;
 if ((host->bus_refs == 0) && host->bus_ops)
  __mmc_release_bus(host);
 spin_unlock_irqrestore(&host->lock, flags);
}

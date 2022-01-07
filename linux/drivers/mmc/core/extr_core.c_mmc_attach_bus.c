
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int bus_ops; int bus_refs; int lock; scalar_t__ bus_dead; int claimed; } ;
struct mmc_bus_ops {int dummy; } ;


 int WARN_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mmc_attach_bus(struct mmc_host *host, const struct mmc_bus_ops *ops)
{
 unsigned long flags;

 WARN_ON(!host->claimed);

 spin_lock_irqsave(&host->lock, flags);

 WARN_ON(host->bus_ops);
 WARN_ON(host->bus_refs);

 host->bus_ops = ops;
 host->bus_refs = 1;
 host->bus_dead = 0;

 spin_unlock_irqrestore(&host->lock, flags);
}

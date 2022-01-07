
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshsd_host {int lock; } ;
struct mmc_ios {int dummy; } ;
struct mmc_host {int dummy; } ;


 int __toshsd_set_ios (struct mmc_host*,struct mmc_ios*) ;
 struct toshsd_host* mmc_priv (struct mmc_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void toshsd_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct toshsd_host *host = mmc_priv(mmc);
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 __toshsd_set_ios(mmc, ios);
 spin_unlock_irqrestore(&host->lock, flags);
}

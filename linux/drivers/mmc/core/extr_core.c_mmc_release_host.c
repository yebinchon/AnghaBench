
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int caps; int wq; int lock; TYPE_1__* claimer; scalar_t__ claimed; scalar_t__ claim_cnt; } ;
struct TYPE_2__ {int * task; } ;


 int MMC_CAP_SYNC_RUNTIME_PM ;
 int WARN_ON (int) ;
 int mmc_dev (struct mmc_host*) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_sync_suspend (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void mmc_release_host(struct mmc_host *host)
{
 unsigned long flags;

 WARN_ON(!host->claimed);

 spin_lock_irqsave(&host->lock, flags);
 if (--host->claim_cnt) {

  spin_unlock_irqrestore(&host->lock, flags);
 } else {
  host->claimed = 0;
  host->claimer->task = ((void*)0);
  host->claimer = ((void*)0);
  spin_unlock_irqrestore(&host->lock, flags);
  wake_up(&host->wq);
  pm_runtime_mark_last_busy(mmc_dev(host));
  if (host->caps & MMC_CAP_SYNC_RUNTIME_PM)
   pm_runtime_put_sync_suspend(mmc_dev(host));
  else
   pm_runtime_put_autosuspend(mmc_dev(host));
 }
}

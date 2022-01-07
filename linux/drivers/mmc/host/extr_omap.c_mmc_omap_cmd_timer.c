
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mmc_omap_host {int abort; int slot_lock; int cmd_abort_work; int mmc_omap_wq; int irq; int * cmd; } ;


 int IE ;
 int OMAP_MMC_WRITE (struct mmc_omap_host*,int ,int ) ;
 int cmd_abort_timer ;
 int disable_irq (int ) ;
 struct mmc_omap_host* from_timer (int ,struct timer_list*,int ) ;
 struct mmc_omap_host* host ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
mmc_omap_cmd_timer(struct timer_list *t)
{
 struct mmc_omap_host *host = from_timer(host, t, cmd_abort_timer);
 unsigned long flags;

 spin_lock_irqsave(&host->slot_lock, flags);
 if (host->cmd != ((void*)0) && !host->abort) {
  OMAP_MMC_WRITE(host, IE, 0);
  disable_irq(host->irq);
  host->abort = 1;
  queue_work(host->mmc_omap_wq, &host->cmd_abort_work);
 }
 spin_unlock_irqrestore(&host->slot_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_omap_slot {int saved_con; int id; int * mmc; struct mmc_omap_host* host; } ;
struct mmc_omap_host {struct mmc_omap_slot* current_slot; TYPE_1__* pdata; int clk_timer; int slot_lock; int * mmc; int slot_wq; } ;
struct TYPE_2__ {int (* switch_slot ) (int ,int ) ;} ;


 int CON ;
 int OMAP_MMC_READ (struct mmc_omap_host*,int ) ;
 int OMAP_MMC_WRITE (struct mmc_omap_host*,int ,int) ;
 int del_timer (int *) ;
 int mmc_dev (int *) ;
 int mmc_omap_fclk_enable (struct mmc_omap_host*,int) ;
 int mmc_omap_fclk_offdelay (struct mmc_omap_slot*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static void mmc_omap_select_slot(struct mmc_omap_slot *slot, int claimed)
{
 struct mmc_omap_host *host = slot->host;
 unsigned long flags;

 if (claimed)
  goto no_claim;
 spin_lock_irqsave(&host->slot_lock, flags);
 while (host->mmc != ((void*)0)) {
  spin_unlock_irqrestore(&host->slot_lock, flags);
  wait_event(host->slot_wq, host->mmc == ((void*)0));
  spin_lock_irqsave(&host->slot_lock, flags);
 }
 host->mmc = slot->mmc;
 spin_unlock_irqrestore(&host->slot_lock, flags);
no_claim:
 del_timer(&host->clk_timer);
 if (host->current_slot != slot || !claimed)
  mmc_omap_fclk_offdelay(host->current_slot);

 if (host->current_slot != slot) {
  OMAP_MMC_WRITE(host, CON, slot->saved_con & 0xFC00);
  if (host->pdata->switch_slot != ((void*)0))
   host->pdata->switch_slot(mmc_dev(slot->mmc), slot->id);
  host->current_slot = slot;
 }

 if (claimed) {
  mmc_omap_fclk_enable(host, 1);




  OMAP_MMC_READ(host, CON);

  OMAP_MMC_WRITE(host, CON, slot->saved_con);
 } else
  mmc_omap_fclk_enable(host, 0);
}

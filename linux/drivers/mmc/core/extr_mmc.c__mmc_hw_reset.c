
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int caps; TYPE_1__* ops; int f_init; struct mmc_card* card; } ;
struct mmc_card {int ocr; } ;
struct TYPE_2__ {int (* hw_reset ) (struct mmc_host*) ;} ;


 int MMC_CAP_HW_RESET ;
 scalar_t__ mmc_can_reset (struct mmc_card*) ;
 int mmc_flush_cache (struct mmc_card*) ;
 int mmc_init_card (struct mmc_host*,int ,struct mmc_card*) ;
 int mmc_power_cycle (struct mmc_host*,int ) ;
 int mmc_pwrseq_reset (struct mmc_host*) ;
 int mmc_set_clock (struct mmc_host*,int ) ;
 int mmc_set_initial_state (struct mmc_host*) ;
 int stub1 (struct mmc_host*) ;

__attribute__((used)) static int _mmc_hw_reset(struct mmc_host *host)
{
 struct mmc_card *card = host->card;





 mmc_flush_cache(host->card);

 if ((host->caps & MMC_CAP_HW_RESET) && host->ops->hw_reset &&
      mmc_can_reset(card)) {

  mmc_set_clock(host, host->f_init);
  host->ops->hw_reset(host);

  mmc_set_initial_state(host);
 } else {

  mmc_power_cycle(host, card->ocr);
  mmc_pwrseq_reset(host);
 }
 return mmc_init_card(host, card->ocr, card);
}

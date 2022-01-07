
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps; int detect; scalar_t__ detect_change; int claimed; struct mmc_card* card; } ;
struct mmc_card {int dummy; } ;


 int MMC_CAP_NEEDS_POLL ;
 int WARN_ON (int) ;
 int _mmc_detect_card_removed (struct mmc_host*) ;
 int _mmc_detect_change (struct mmc_host*,int ,int) ;
 int cancel_delayed_work (int *) ;
 int mmc_card_is_removable (struct mmc_host*) ;
 int mmc_card_removed (struct mmc_card*) ;

int mmc_detect_card_removed(struct mmc_host *host)
{
 struct mmc_card *card = host->card;
 int ret;

 WARN_ON(!host->claimed);

 if (!card)
  return 1;

 if (!mmc_card_is_removable(host))
  return 0;

 ret = mmc_card_removed(card);




 if (!host->detect_change && !(host->caps & MMC_CAP_NEEDS_POLL))
  return ret;

 host->detect_change = 0;
 if (!ret) {
  ret = _mmc_detect_card_removed(host);
  if (ret && (host->caps & MMC_CAP_NEEDS_POLL)) {




   cancel_delayed_work(&host->detect);
   _mmc_detect_change(host, 0, 0);
  }
 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bus_width; } ;
struct mmc_host {TYPE_2__ ios; TYPE_1__* ops; } ;
struct mmc_card {int mmc_avail_type; struct mmc_host* host; } ;
struct TYPE_3__ {int (* prepare_hs400_tuning ) (struct mmc_host*,TYPE_2__*) ;} ;


 int EXT_CSD_CARD_TYPE_HS400 ;
 scalar_t__ MMC_BUS_WIDTH_8 ;
 int mmc_execute_tuning (struct mmc_card*) ;
 int stub1 (struct mmc_host*,TYPE_2__*) ;

__attribute__((used)) static int mmc_hs200_tuning(struct mmc_card *card)
{
 struct mmc_host *host = card->host;





 if (card->mmc_avail_type & EXT_CSD_CARD_TYPE_HS400 &&
     host->ios.bus_width == MMC_BUS_WIDTH_8)
  if (host->ops->prepare_hs400_tuning)
   host->ops->prepare_hs400_tuning(host, &host->ios);

 return mmc_execute_tuning(card);
}

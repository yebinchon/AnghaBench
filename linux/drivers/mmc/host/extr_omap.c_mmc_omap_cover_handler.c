
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_omap_slot {int cover_timer; TYPE_1__* mmc; } ;
struct TYPE_2__ {int * card; } ;


 int OMAP_MMC_COVER_POLL_DELAY ;
 scalar_t__ jiffies ;
 int mmc_detect_change (TYPE_1__*,int ) ;
 int mmc_omap_cover_is_open (struct mmc_omap_slot*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void mmc_omap_cover_handler(unsigned long param)
{
 struct mmc_omap_slot *slot = (struct mmc_omap_slot *)param;
 int cover_open = mmc_omap_cover_is_open(slot);

 mmc_detect_change(slot->mmc, 0);
 if (!cover_open)
  return;





 if (slot->mmc->card == ((void*)0))
  return;

 mod_timer(&slot->cover_timer,
    jiffies + msecs_to_jiffies(OMAP_MMC_COVER_POLL_DELAY));
}

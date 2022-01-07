
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int feature_support; } ;
struct mmc_card {TYPE_1__ ext_csd; } ;


 int MMC_DISCARD_FEATURE ;

int mmc_can_discard(struct mmc_card *card)
{




 if (card->ext_csd.feature_support & MMC_DISCARD_FEATURE)
  return 1;
 return 0;
}

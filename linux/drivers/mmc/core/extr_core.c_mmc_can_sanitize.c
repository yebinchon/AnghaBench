
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sec_feature_support; } ;
struct mmc_card {TYPE_1__ ext_csd; } ;


 int EXT_CSD_SEC_SANITIZE ;
 int mmc_can_erase (struct mmc_card*) ;
 int mmc_can_trim (struct mmc_card*) ;

int mmc_can_sanitize(struct mmc_card *card)
{
 if (!mmc_can_trim(card) && !mmc_can_erase(card))
  return 0;
 if (card->ext_csd.sec_feature_support & EXT_CSD_SEC_SANITIZE)
  return 1;
 return 0;
}

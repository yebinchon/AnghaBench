
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sec_feature_support; } ;
struct mmc_card {int quirks; TYPE_1__ ext_csd; } ;


 int EXT_CSD_SEC_GB_CL_EN ;
 int MMC_QUIRK_TRIM_BROKEN ;

int mmc_can_trim(struct mmc_card *card)
{
 if ((card->ext_csd.sec_feature_support & EXT_CSD_SEC_GB_CL_EN) &&
     (!(card->quirks & MMC_QUIRK_TRIM_BROKEN)))
  return 1;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int generic_cmd6_time; } ;
struct mmc_card {int host; TYPE_1__ ext_csd; } ;


 int EXT_CSD_CMD_SET_NORMAL ;
 int EXT_CSD_HS_TIMING ;
 int EXT_CSD_TIMING_HS ;
 int MMC_TIMING_MMC_HS ;
 int __mmc_switch (struct mmc_card*,int ,int ,int ,int ,int ,int,int,int) ;
 int mmc_hostname (int ) ;
 int pr_warn (char*,int ,int) ;

__attribute__((used)) static int mmc_select_hs(struct mmc_card *card)
{
 int err;

 err = __mmc_switch(card, EXT_CSD_CMD_SET_NORMAL,
      EXT_CSD_HS_TIMING, EXT_CSD_TIMING_HS,
      card->ext_csd.generic_cmd6_time, MMC_TIMING_MMC_HS,
      1, 1, 1);
 if (err)
  pr_warn("%s: switch to high-speed failed, err:%d\n",
   mmc_hostname(card->host), err);

 return err;
}

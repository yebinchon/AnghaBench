
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ raw_bkops_status; int man_bkops_en; } ;
struct mmc_card {int host; TYPE_1__ ext_csd; } ;


 scalar_t__ EXT_CSD_BKOPS_LEVEL_2 ;
 int EXT_CSD_BKOPS_START ;
 int EXT_CSD_CMD_SET_NORMAL ;
 int MMC_OPS_TIMEOUT_MS ;
 int mmc_hostname (int ) ;
 int mmc_read_bkops_status (struct mmc_card*) ;
 int mmc_retune_hold (int ) ;
 int mmc_retune_release (int ) ;
 int mmc_switch (struct mmc_card*,int ,int ,int,int ) ;
 int pr_err (char*,int ,int) ;
 int pr_warn (char*,int ,int) ;

void mmc_run_bkops(struct mmc_card *card)
{
 int err;

 if (!card->ext_csd.man_bkops_en)
  return;

 err = mmc_read_bkops_status(card);
 if (err) {
  pr_err("%s: Failed to read bkops status: %d\n",
         mmc_hostname(card->host), err);
  return;
 }

 if (!card->ext_csd.raw_bkops_status ||
     card->ext_csd.raw_bkops_status < EXT_CSD_BKOPS_LEVEL_2)
  return;

 mmc_retune_hold(card->host);






 err = mmc_switch(card, EXT_CSD_CMD_SET_NORMAL,
   EXT_CSD_BKOPS_START, 1, MMC_OPS_TIMEOUT_MS);
 if (err)
  pr_warn("%s: Error %d starting bkops\n",
   mmc_hostname(card->host), err);

 mmc_retune_release(card->host);
}

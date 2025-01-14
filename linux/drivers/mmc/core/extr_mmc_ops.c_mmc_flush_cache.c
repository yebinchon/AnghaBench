
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cache_size; int cache_ctrl; } ;
struct mmc_card {int host; TYPE_1__ ext_csd; } ;


 int EXT_CSD_CMD_SET_NORMAL ;
 int EXT_CSD_FLUSH_CACHE ;
 scalar_t__ mmc_card_mmc (struct mmc_card*) ;
 int mmc_hostname (int ) ;
 int mmc_switch (struct mmc_card*,int ,int ,int,int ) ;
 int pr_err (char*,int ,int) ;

int mmc_flush_cache(struct mmc_card *card)
{
 int err = 0;

 if (mmc_card_mmc(card) &&
   (card->ext_csd.cache_size > 0) &&
   (card->ext_csd.cache_ctrl & 1)) {
  err = mmc_switch(card, EXT_CSD_CMD_SET_NORMAL,
    EXT_CSD_FLUSH_CACHE, 1, 0);
  if (err)
   pr_err("%s: cache flush error %d\n",
     mmc_hostname(card->host), err);
 }

 return err;
}

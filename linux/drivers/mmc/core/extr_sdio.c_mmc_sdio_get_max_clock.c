
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int max_dtr; } ;
struct mmc_card {scalar_t__ type; TYPE_1__ cis; } ;


 scalar_t__ MMC_TYPE_SD_COMBO ;
 unsigned int min (unsigned int,int ) ;
 scalar_t__ mmc_card_hs (struct mmc_card*) ;
 int mmc_sd_get_max_clock (struct mmc_card*) ;

__attribute__((used)) static unsigned mmc_sdio_get_max_clock(struct mmc_card *card)
{
 unsigned max_dtr;

 if (mmc_card_hs(card)) {






  max_dtr = 50000000;
 } else {
  max_dtr = card->cis.max_dtr;
 }

 if (card->type == MMC_TYPE_SD_COMBO)
  max_dtr = min(max_dtr, mmc_sd_get_max_clock(card));

 return max_dtr;
}

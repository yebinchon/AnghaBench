
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int max_dtr; } ;
struct TYPE_4__ {unsigned int hs200_max_dtr; unsigned int hs_max_dtr; } ;
struct mmc_card {int host; TYPE_1__ csd; TYPE_2__ ext_csd; } ;


 scalar_t__ mmc_card_hs (struct mmc_card*) ;
 scalar_t__ mmc_card_hs200 (struct mmc_card*) ;
 scalar_t__ mmc_card_hs400 (struct mmc_card*) ;
 int mmc_set_clock (int ,unsigned int) ;

__attribute__((used)) static void mmc_set_bus_speed(struct mmc_card *card)
{
 unsigned int max_dtr = (unsigned int)-1;

 if ((mmc_card_hs200(card) || mmc_card_hs400(card)) &&
      max_dtr > card->ext_csd.hs200_max_dtr)
  max_dtr = card->ext_csd.hs200_max_dtr;
 else if (mmc_card_hs(card) && max_dtr > card->ext_csd.hs_max_dtr)
  max_dtr = card->ext_csd.hs_max_dtr;
 else if (max_dtr > card->csd.max_dtr)
  max_dtr = card->csd.max_dtr;

 mmc_set_clock(card->host, max_dtr);
}

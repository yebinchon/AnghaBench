
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dummy; } ;


 scalar_t__ mmc_card_sd (struct mmc_card*) ;
 unsigned int mmc_mmc_erase_timeout (struct mmc_card*,unsigned int,unsigned int) ;
 unsigned int mmc_sd_erase_timeout (struct mmc_card*,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int mmc_erase_timeout(struct mmc_card *card,
          unsigned int arg,
          unsigned int qty)
{
 if (mmc_card_sd(card))
  return mmc_sd_erase_timeout(card, arg, qty);
 else
  return mmc_mmc_erase_timeout(card, arg, qty);
}

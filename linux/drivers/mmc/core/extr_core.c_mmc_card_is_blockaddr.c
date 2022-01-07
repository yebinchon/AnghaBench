
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dummy; } ;


 int mmc_card_blockaddr (struct mmc_card*) ;

bool mmc_card_is_blockaddr(struct mmc_card *card)
{
 return card ? mmc_card_blockaddr(card) : 0;
}

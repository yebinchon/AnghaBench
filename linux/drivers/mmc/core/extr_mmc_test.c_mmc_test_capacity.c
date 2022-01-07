
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int capacity; int read_blkbits; } ;
struct TYPE_3__ {unsigned int sectors; } ;
struct mmc_card {TYPE_2__ csd; TYPE_1__ ext_csd; } ;


 scalar_t__ mmc_card_blockaddr (struct mmc_card*) ;
 int mmc_card_sd (struct mmc_card*) ;

__attribute__((used)) static unsigned int mmc_test_capacity(struct mmc_card *card)
{
 if (!mmc_card_sd(card) && mmc_card_blockaddr(card))
  return card->ext_csd.sectors;
 else
  return card->csd.capacity << (card->csd.read_blkbits - 9);
}

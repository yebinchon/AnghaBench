
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmdclass; } ;
struct mmc_card {TYPE_1__ csd; } ;


 int CCC_BLOCK_WRITE ;
 scalar_t__ mmc_card_readonly (struct mmc_card*) ;

__attribute__((used)) static inline int mmc_blk_readonly(struct mmc_card *card)
{
 return mmc_card_readonly(card) ||
        !(card->csd.cmdclass & CCC_BLOCK_WRITE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmds; } ;
struct mmc_card {TYPE_1__ scr; } ;


 int SD_SCR_CMD23_SUPPORT ;
 scalar_t__ mmc_card_mmc (struct mmc_card*) ;
 scalar_t__ mmc_card_sd (struct mmc_card*) ;

__attribute__((used)) static bool mmc_test_card_cmd23(struct mmc_card *card)
{
 return mmc_card_mmc(card) ||
        (mmc_card_sd(card) && card->scr.cmds & SD_SCR_CMD23_SUPPORT);
}

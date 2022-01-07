
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cmdclass; } ;
struct mmc_card {scalar_t__ erase_size; TYPE_2__ csd; TYPE_1__* host; } ;
struct TYPE_3__ {int caps; } ;


 int CCC_ERASE ;
 int MMC_CAP_ERASE ;

int mmc_can_erase(struct mmc_card *card)
{
 if ((card->host->caps & MMC_CAP_ERASE) &&
     (card->csd.cmdclass & CCC_ERASE) && card->erase_size)
  return 1;
 return 0;
}

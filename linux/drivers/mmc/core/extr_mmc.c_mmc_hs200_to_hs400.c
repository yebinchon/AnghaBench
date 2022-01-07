
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dummy; } ;


 int mmc_select_hs400 (struct mmc_card*) ;

int mmc_hs200_to_hs400(struct mmc_card *card)
{
 return mmc_select_hs400(card);
}

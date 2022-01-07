
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dummy; } ;


 int __mmc_switch_status (struct mmc_card*,int) ;

int mmc_switch_status(struct mmc_card *card)
{
 return __mmc_switch_status(card, 1);
}

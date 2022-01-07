
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dummy; } ;


 int mmc_cmdq_switch (struct mmc_card*,int) ;

int mmc_cmdq_enable(struct mmc_card *card)
{
 return mmc_cmdq_switch(card, 1);
}

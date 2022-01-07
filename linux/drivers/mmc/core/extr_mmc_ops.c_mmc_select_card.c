
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int host; } ;


 int _mmc_select_card (int ,struct mmc_card*) ;

int mmc_select_card(struct mmc_card *card)
{

 return _mmc_select_card(card->host, card);
}

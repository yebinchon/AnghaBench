
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dummy; } ;


 int sdio_read_cis (struct mmc_card*,int *) ;

int sdio_read_common_cis(struct mmc_card *card)
{
 return sdio_read_cis(card, ((void*)0));
}

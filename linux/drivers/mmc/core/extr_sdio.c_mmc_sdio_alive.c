
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int card; } ;


 int mmc_select_card (int ) ;

__attribute__((used)) static int mmc_sdio_alive(struct mmc_host *host)
{
 return mmc_select_card(host->card);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {int ocr; } ;


 int mmc_power_cycle (struct mmc_host*,int ) ;
 int mmc_sdio_reinit_card (struct mmc_host*) ;

__attribute__((used)) static int mmc_sdio_hw_reset(struct mmc_host *host)
{
 mmc_power_cycle(host, host->card->ocr);
 return mmc_sdio_reinit_card(host);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {int ocr; } ;


 int mmc_claim_host (struct mmc_host*) ;
 int mmc_power_up (struct mmc_host*,int ) ;
 int mmc_release_host (struct mmc_host*) ;
 int mmc_sdio_reinit_card (struct mmc_host*) ;

__attribute__((used)) static int mmc_sdio_runtime_resume(struct mmc_host *host)
{
 int ret;


 mmc_claim_host(host);
 mmc_power_up(host, host->card->ocr);
 ret = mmc_sdio_reinit_card(host);
 mmc_release_host(host);

 return ret;
}

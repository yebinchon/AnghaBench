
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;


 int mmc_claim_host (struct mmc_host*) ;
 int mmc_power_off (struct mmc_host*) ;
 int mmc_release_host (struct mmc_host*) ;

__attribute__((used)) static int mmc_sdio_runtime_suspend(struct mmc_host *host)
{

 mmc_claim_host(host);
 mmc_power_off(host);
 mmc_release_host(host);

 return 0;
}

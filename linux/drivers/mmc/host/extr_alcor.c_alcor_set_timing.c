
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {scalar_t__ timing; } ;
struct mmc_host {int dummy; } ;
struct alcor_sdmmc_host {int dummy; } ;


 int AU6601_CLK_DELAY ;
 int AU6601_CLK_POSITIVE_EDGE_ALL ;
 scalar_t__ MMC_TIMING_LEGACY ;
 int alcor_rmw8 (struct alcor_sdmmc_host*,int ,int ,int ) ;
 struct alcor_sdmmc_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void alcor_set_timing(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct alcor_sdmmc_host *host = mmc_priv(mmc);

 if (ios->timing == MMC_TIMING_LEGACY) {
  alcor_rmw8(host, AU6601_CLK_DELAY,
       AU6601_CLK_POSITIVE_EDGE_ALL, 0);
 } else {
  alcor_rmw8(host, AU6601_CLK_DELAY,
       0, AU6601_CLK_POSITIVE_EDGE_ALL);
 }
}

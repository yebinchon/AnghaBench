
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_mmc_host {int bus_width; int ssp; } ;
struct mmc_ios {scalar_t__ bus_width; int clock; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ MMC_BUS_WIDTH_4 ;
 scalar_t__ MMC_BUS_WIDTH_8 ;
 struct mxs_mmc_host* mmc_priv (struct mmc_host*) ;
 int mxs_ssp_set_clk_rate (int *,int ) ;

__attribute__((used)) static void mxs_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct mxs_mmc_host *host = mmc_priv(mmc);

 if (ios->bus_width == MMC_BUS_WIDTH_8)
  host->bus_width = 2;
 else if (ios->bus_width == MMC_BUS_WIDTH_4)
  host->bus_width = 1;
 else
  host->bus_width = 0;

 if (ios->clock)
  mxs_ssp_set_clk_rate(&host->ssp, ios->clock);
}

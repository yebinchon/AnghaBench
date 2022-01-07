
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {int flags; TYPE_1__* mmc; } ;
struct mmc_ios {scalar_t__ timing; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;


 scalar_t__ MMC_TIMING_MMC_DDR52 ;
 scalar_t__ MMC_TIMING_MMC_HS400 ;
 scalar_t__ MMC_TIMING_UHS_DDR50 ;
 int SDHCI_HS400_TUNING ;

__attribute__((used)) static unsigned int msm_get_clock_rate_for_bus_mode(struct sdhci_host *host,
          unsigned int clock)
{
 struct mmc_ios ios = host->mmc->ios;






 if (ios.timing == MMC_TIMING_UHS_DDR50 ||
     ios.timing == MMC_TIMING_MMC_DDR52 ||
     ios.timing == MMC_TIMING_MMC_HS400 ||
     host->flags & SDHCI_HS400_TUNING)
  clock *= 2;
 return clock;
}

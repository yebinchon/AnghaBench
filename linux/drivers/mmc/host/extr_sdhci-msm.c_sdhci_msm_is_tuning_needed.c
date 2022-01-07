
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {scalar_t__ clock; TYPE_1__* mmc; } ;
struct mmc_ios {scalar_t__ timing; scalar_t__ enhanced_strobe; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;


 scalar_t__ CORE_FREQ_100MHZ ;
 scalar_t__ MMC_TIMING_MMC_HS200 ;
 scalar_t__ MMC_TIMING_MMC_HS400 ;
 scalar_t__ MMC_TIMING_UHS_SDR104 ;

__attribute__((used)) static bool sdhci_msm_is_tuning_needed(struct sdhci_host *host)
{
 struct mmc_ios *ios = &host->mmc->ios;





 if (host->clock <= CORE_FREQ_100MHZ ||
     !(ios->timing == MMC_TIMING_MMC_HS400 ||
     ios->timing == MMC_TIMING_MMC_HS200 ||
     ios->timing == MMC_TIMING_UHS_SDR104) ||
     ios->enhanced_strobe)
  return 0;

 return 1;
}

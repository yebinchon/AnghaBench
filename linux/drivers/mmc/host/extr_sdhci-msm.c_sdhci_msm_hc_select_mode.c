
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {int flags; TYPE_1__* mmc; } ;
struct mmc_ios {scalar_t__ timing; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;


 scalar_t__ MMC_TIMING_MMC_HS400 ;
 int SDHCI_HS400_TUNING ;
 int msm_hc_select_default (struct sdhci_host*) ;
 int msm_hc_select_hs400 (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_msm_hc_select_mode(struct sdhci_host *host)
{
 struct mmc_ios ios = host->mmc->ios;

 if (ios.timing == MMC_TIMING_MMC_HS400 ||
     host->flags & SDHCI_HS400_TUNING)
  msm_hc_select_hs400(host);
 else
  msm_hc_select_default(host);
}

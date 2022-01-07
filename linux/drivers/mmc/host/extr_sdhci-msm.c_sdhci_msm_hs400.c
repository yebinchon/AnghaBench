
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {int calibration_done; scalar_t__ tuning_done; } ;
struct sdhci_host {scalar_t__ clock; int mmc; } ;
struct mmc_ios {scalar_t__ enhanced_strobe; } ;


 scalar_t__ CORE_FREQ_100MHZ ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ,int) ;
 int sdhci_msm_hs400_dll_calibration (struct sdhci_host*) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_msm_hs400(struct sdhci_host *host, struct mmc_ios *ios)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);
 int ret;

 if (host->clock > CORE_FREQ_100MHZ &&
     (msm_host->tuning_done || ios->enhanced_strobe) &&
     !msm_host->calibration_done) {
  ret = sdhci_msm_hs400_dll_calibration(host);
  if (!ret)
   msm_host->calibration_done = 1;
  else
   pr_err("%s: Failed to calibrate DLL for hs400 mode (%d)\n",
          mmc_hostname(host->mmc), ret);
 }
}

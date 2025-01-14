
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_tegra {scalar_t__ pad_calib_required; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_ios {int signal_voltage; } ;
struct mmc_host {int dummy; } ;


 int MMC_SIGNAL_VOLTAGE_180 ;
 int MMC_SIGNAL_VOLTAGE_330 ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_start_signal_voltage_switch (struct mmc_host*,struct mmc_ios*) ;
 int tegra_sdhci_pad_autocalib (struct sdhci_host*) ;
 int tegra_sdhci_set_padctrl (struct sdhci_host*,int ,int) ;

__attribute__((used)) static int sdhci_tegra_start_signal_voltage_switch(struct mmc_host *mmc,
         struct mmc_ios *ios)
{
 struct sdhci_host *host = mmc_priv(mmc);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 int ret = 0;

 if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_330) {
  ret = tegra_sdhci_set_padctrl(host, ios->signal_voltage, 1);
  if (ret < 0)
   return ret;
  ret = sdhci_start_signal_voltage_switch(mmc, ios);
 } else if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_180) {
  ret = sdhci_start_signal_voltage_switch(mmc, ios);
  if (ret < 0)
   return ret;
  ret = tegra_sdhci_set_padctrl(host, ios->signal_voltage, 1);
 }

 if (tegra_host->pad_calib_required)
  tegra_sdhci_pad_autocalib(host);

 return ret;
}

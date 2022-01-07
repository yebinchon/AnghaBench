
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_tegra_autocal_offsets {int pull_up_1v8_timeout; int pull_down_1v8_timeout; int pull_up_3v3_timeout; int pull_down_3v3_timeout; } ;
struct sdhci_tegra {struct pinctrl_state* pinctrl_state_3v3; int pinctrl_sdmmc; struct pinctrl_state* pinctrl_state_1v8; int pad_control_available; struct pinctrl_state* pinctrl_state_3v3_drv; struct pinctrl_state* pinctrl_state_1v8_drv; struct sdhci_tegra_autocal_offsets autocal_offsets; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int mmc; } ;
struct pinctrl_state {int dummy; } ;


 int MMC_SIGNAL_VOLTAGE_180 ;
 int SDHCI_COMP_PADCTRL_DRVUPDN_OFFSET_MASK ;
 int SDHCI_TEGRA_SDMEM_COMP_PADCTRL ;
 int dev_err (int ,char*,int) ;
 int mmc_dev (int ) ;
 int pinctrl_select_state (int ,struct pinctrl_state*) ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

__attribute__((used)) static int tegra_sdhci_set_padctrl(struct sdhci_host *host, int voltage,
       bool state_drvupdn)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 struct sdhci_tegra_autocal_offsets *offsets =
      &tegra_host->autocal_offsets;
 struct pinctrl_state *pinctrl_drvupdn = ((void*)0);
 int ret = 0;
 u8 drvup = 0, drvdn = 0;
 u32 reg;

 if (!state_drvupdn) {

  if (voltage == MMC_SIGNAL_VOLTAGE_180) {
   if (tegra_host->pinctrl_state_1v8_drv) {
    pinctrl_drvupdn =
     tegra_host->pinctrl_state_1v8_drv;
   } else {
    drvup = offsets->pull_up_1v8_timeout;
    drvdn = offsets->pull_down_1v8_timeout;
   }
  } else {
   if (tegra_host->pinctrl_state_3v3_drv) {
    pinctrl_drvupdn =
     tegra_host->pinctrl_state_3v3_drv;
   } else {
    drvup = offsets->pull_up_3v3_timeout;
    drvdn = offsets->pull_down_3v3_timeout;
   }
  }

  if (pinctrl_drvupdn != ((void*)0)) {
   ret = pinctrl_select_state(tegra_host->pinctrl_sdmmc,
       pinctrl_drvupdn);
   if (ret < 0)
    dev_err(mmc_dev(host->mmc),
     "failed pads drvupdn, ret: %d\n", ret);
  } else if ((drvup) || (drvdn)) {
   reg = sdhci_readl(host,
     SDHCI_TEGRA_SDMEM_COMP_PADCTRL);
   reg &= ~SDHCI_COMP_PADCTRL_DRVUPDN_OFFSET_MASK;
   reg |= (drvup << 20) | (drvdn << 12);
   sdhci_writel(host, reg,
     SDHCI_TEGRA_SDMEM_COMP_PADCTRL);
  }

 } else {

  if (!tegra_host->pad_control_available)
   return 0;

  if (voltage == MMC_SIGNAL_VOLTAGE_180) {
   ret = pinctrl_select_state(tegra_host->pinctrl_sdmmc,
      tegra_host->pinctrl_state_1v8);
   if (ret < 0)
    dev_err(mmc_dev(host->mmc),
     "setting 1.8V failed, ret: %d\n", ret);
  } else {
   ret = pinctrl_select_state(tegra_host->pinctrl_sdmmc,
      tegra_host->pinctrl_state_3v3);
   if (ret < 0)
    dev_err(mmc_dev(host->mmc),
     "setting 3.3V failed, ret: %d\n", ret);
  }
 }

 return ret;
}

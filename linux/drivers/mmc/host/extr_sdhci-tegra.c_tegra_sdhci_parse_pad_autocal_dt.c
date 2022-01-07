
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_tegra_autocal_offsets {scalar_t__ pull_down_1v8; scalar_t__ pull_down_hs400; scalar_t__ pull_up_1v8; scalar_t__ pull_up_hs400; scalar_t__ pull_down_sdr104; scalar_t__ pull_up_sdr104; scalar_t__ pull_down_1v8_timeout; scalar_t__ pull_up_1v8_timeout; scalar_t__ pull_down_3v3_timeout; scalar_t__ pull_up_3v3_timeout; scalar_t__ pull_down_3v3; scalar_t__ pull_up_3v3; } ;
struct sdhci_tegra {int * pinctrl_state_1v8_drv; int pinctrl_state_1v8; int * pinctrl_state_3v3_drv; int pinctrl_state_3v3; struct sdhci_tegra_autocal_offsets autocal_offsets; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct TYPE_2__ {int parent; } ;


 int IS_ERR (int ) ;
 int device_property_read_u32 (int ,char*,scalar_t__*) ;
 int mmc_hostname (TYPE_1__*) ;
 int pr_warn (char*,int ) ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static void tegra_sdhci_parse_pad_autocal_dt(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 struct sdhci_tegra_autocal_offsets *autocal =
   &tegra_host->autocal_offsets;
 int err;

 err = device_property_read_u32(host->mmc->parent,
   "nvidia,pad-autocal-pull-up-offset-3v3",
   &autocal->pull_up_3v3);
 if (err)
  autocal->pull_up_3v3 = 0;

 err = device_property_read_u32(host->mmc->parent,
   "nvidia,pad-autocal-pull-down-offset-3v3",
   &autocal->pull_down_3v3);
 if (err)
  autocal->pull_down_3v3 = 0;

 err = device_property_read_u32(host->mmc->parent,
   "nvidia,pad-autocal-pull-up-offset-1v8",
   &autocal->pull_up_1v8);
 if (err)
  autocal->pull_up_1v8 = 0;

 err = device_property_read_u32(host->mmc->parent,
   "nvidia,pad-autocal-pull-down-offset-1v8",
   &autocal->pull_down_1v8);
 if (err)
  autocal->pull_down_1v8 = 0;

 err = device_property_read_u32(host->mmc->parent,
   "nvidia,pad-autocal-pull-up-offset-3v3-timeout",
   &autocal->pull_up_3v3_timeout);
 if (err) {
  if (!IS_ERR(tegra_host->pinctrl_state_3v3) &&
   (tegra_host->pinctrl_state_3v3_drv == ((void*)0)))
   pr_warn("%s: Missing autocal timeout 3v3-pad drvs\n",
    mmc_hostname(host->mmc));
  autocal->pull_up_3v3_timeout = 0;
 }

 err = device_property_read_u32(host->mmc->parent,
   "nvidia,pad-autocal-pull-down-offset-3v3-timeout",
   &autocal->pull_down_3v3_timeout);
 if (err) {
  if (!IS_ERR(tegra_host->pinctrl_state_3v3) &&
   (tegra_host->pinctrl_state_3v3_drv == ((void*)0)))
   pr_warn("%s: Missing autocal timeout 3v3-pad drvs\n",
    mmc_hostname(host->mmc));
  autocal->pull_down_3v3_timeout = 0;
 }

 err = device_property_read_u32(host->mmc->parent,
   "nvidia,pad-autocal-pull-up-offset-1v8-timeout",
   &autocal->pull_up_1v8_timeout);
 if (err) {
  if (!IS_ERR(tegra_host->pinctrl_state_1v8) &&
   (tegra_host->pinctrl_state_1v8_drv == ((void*)0)))
   pr_warn("%s: Missing autocal timeout 1v8-pad drvs\n",
    mmc_hostname(host->mmc));
  autocal->pull_up_1v8_timeout = 0;
 }

 err = device_property_read_u32(host->mmc->parent,
   "nvidia,pad-autocal-pull-down-offset-1v8-timeout",
   &autocal->pull_down_1v8_timeout);
 if (err) {
  if (!IS_ERR(tegra_host->pinctrl_state_1v8) &&
   (tegra_host->pinctrl_state_1v8_drv == ((void*)0)))
   pr_warn("%s: Missing autocal timeout 1v8-pad drvs\n",
    mmc_hostname(host->mmc));
  autocal->pull_down_1v8_timeout = 0;
 }

 err = device_property_read_u32(host->mmc->parent,
   "nvidia,pad-autocal-pull-up-offset-sdr104",
   &autocal->pull_up_sdr104);
 if (err)
  autocal->pull_up_sdr104 = autocal->pull_up_1v8;

 err = device_property_read_u32(host->mmc->parent,
   "nvidia,pad-autocal-pull-down-offset-sdr104",
   &autocal->pull_down_sdr104);
 if (err)
  autocal->pull_down_sdr104 = autocal->pull_down_1v8;

 err = device_property_read_u32(host->mmc->parent,
   "nvidia,pad-autocal-pull-up-offset-hs400",
   &autocal->pull_up_hs400);
 if (err)
  autocal->pull_up_hs400 = autocal->pull_up_1v8;

 err = device_property_read_u32(host->mmc->parent,
   "nvidia,pad-autocal-pull-down-offset-hs400",
   &autocal->pull_down_hs400);
 if (err)
  autocal->pull_down_hs400 = autocal->pull_down_1v8;
}

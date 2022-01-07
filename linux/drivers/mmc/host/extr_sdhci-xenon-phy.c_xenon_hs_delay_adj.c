
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {scalar_t__ clock; int timing; int mmc; } ;


 int EINVAL ;





 scalar_t__ WARN_ON (int) ;
 scalar_t__ XENON_DEFAULT_SDCLK_FREQ ;
 int dev_warn_once (int ,char*) ;
 int mmc_dev (int ) ;
 int xenon_emmc_phy_config_tuning (struct sdhci_host*) ;
 int xenon_emmc_phy_strobe_delay_adj (struct sdhci_host*) ;

__attribute__((used)) static int xenon_hs_delay_adj(struct sdhci_host *host)
{
 int ret = 0;

 if (WARN_ON(host->clock <= XENON_DEFAULT_SDCLK_FREQ))
  return -EINVAL;

 switch (host->timing) {
 case 130:
  xenon_emmc_phy_strobe_delay_adj(host);
  return 0;
 case 131:
 case 128:
  return xenon_emmc_phy_config_tuning(host);
 case 132:
 case 129:
  dev_warn_once(mmc_dev(host->mmc), "Timing issue might occur in DDR mode\n");
  return 0;
 }

 return ret;
}

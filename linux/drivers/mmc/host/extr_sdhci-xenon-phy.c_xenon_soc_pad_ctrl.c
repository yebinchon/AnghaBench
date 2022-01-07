
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 int xenon_emmc_phy_set_soc_pad (struct sdhci_host*,unsigned char) ;

void xenon_soc_pad_ctrl(struct sdhci_host *host,
   unsigned char signal_voltage)
{
 xenon_emmc_phy_set_soc_pad(host, signal_voltage);
}

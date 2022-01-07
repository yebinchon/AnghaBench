
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {int dummy; } ;


 int O2_SD_HW_TUNING_DISABLE ;
 int O2_SD_VENDOR_SETTING ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_o2_set_tuning_mode(struct sdhci_host *host)
{
 u16 reg;


 reg = sdhci_readw(host, O2_SD_VENDOR_SETTING);
 reg &= ~O2_SD_HW_TUNING_DISABLE;
 sdhci_writew(host, reg, O2_SD_VENDOR_SETTING);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 unsigned int SDHCI_CTRL_EXEC_TUNING ;
 unsigned int SDHCI_CTRL_PRESET_VAL_ENABLE ;
 int SDHCI_HOST_CONTROL2 ;
 unsigned int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,unsigned int,int ) ;

__attribute__((used)) static void amd_tuning_reset(struct sdhci_host *host)
{
 unsigned int val;

 val = sdhci_readw(host, SDHCI_HOST_CONTROL2);
 val |= SDHCI_CTRL_PRESET_VAL_ENABLE | SDHCI_CTRL_EXEC_TUNING;
 sdhci_writew(host, val, SDHCI_HOST_CONTROL2);

 val = sdhci_readw(host, SDHCI_HOST_CONTROL2);
 val &= ~SDHCI_CTRL_EXEC_TUNING;
 sdhci_writew(host, val, SDHCI_HOST_CONTROL2);
}

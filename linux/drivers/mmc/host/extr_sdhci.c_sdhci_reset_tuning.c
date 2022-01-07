
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_CTRL_EXEC_TUNING ;
 int SDHCI_CTRL_TUNED_CLK ;
 int SDHCI_HOST_CONTROL2 ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

void sdhci_reset_tuning(struct sdhci_host *host)
{
 u16 ctrl;

 ctrl = sdhci_readw(host, SDHCI_HOST_CONTROL2);
 ctrl &= ~SDHCI_CTRL_TUNED_CLK;
 ctrl &= ~SDHCI_CTRL_EXEC_TUNING;
 sdhci_writew(host, ctrl, SDHCI_HOST_CONTROL2);
}

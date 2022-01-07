
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {int quirks2; } ;


 int SDHCI_CTRL_EXEC_TUNING ;
 int SDHCI_CTRL_TUNED_CLK ;
 int SDHCI_HOST_CONTROL2 ;
 int SDHCI_INT_DATA_AVAIL ;
 int SDHCI_INT_ENABLE ;
 int SDHCI_QUIRK2_TUNING_WORK_AROUND ;
 int SDHCI_SIGNAL_ENABLE ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

void sdhci_start_tuning(struct sdhci_host *host)
{
 u16 ctrl;

 ctrl = sdhci_readw(host, SDHCI_HOST_CONTROL2);
 ctrl |= SDHCI_CTRL_EXEC_TUNING;
 if (host->quirks2 & SDHCI_QUIRK2_TUNING_WORK_AROUND)
  ctrl |= SDHCI_CTRL_TUNED_CLK;
 sdhci_writew(host, ctrl, SDHCI_HOST_CONTROL2);
 sdhci_writel(host, SDHCI_INT_DATA_AVAIL, SDHCI_INT_ENABLE);
 sdhci_writel(host, SDHCI_INT_DATA_AVAIL, SDHCI_SIGNAL_ENABLE);
}

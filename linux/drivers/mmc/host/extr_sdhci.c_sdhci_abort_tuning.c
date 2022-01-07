
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int mmc; } ;


 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int mmc_abort_tuning (int ,int ) ;
 int sdhci_do_reset (struct sdhci_host*,int ) ;
 int sdhci_end_tuning (struct sdhci_host*) ;
 int sdhci_reset_tuning (struct sdhci_host*) ;

void sdhci_abort_tuning(struct sdhci_host *host, u32 opcode)
{
 sdhci_reset_tuning(host);

 sdhci_do_reset(host, SDHCI_RESET_CMD);
 sdhci_do_reset(host, SDHCI_RESET_DATA);

 sdhci_end_tuning(host);

 mmc_abort_tuning(host->mmc, opcode);
}

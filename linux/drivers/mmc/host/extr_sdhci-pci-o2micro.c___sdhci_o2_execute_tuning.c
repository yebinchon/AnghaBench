
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_host {int tuning_done; int mmc; } ;


 int MMC_SEND_TUNING_BLOCK_HS200 ;
 int SDHCI_CTRL_EXEC_TUNING ;
 int SDHCI_CTRL_TUNED_CLK ;
 int SDHCI_HOST_CONTROL2 ;
 int mdelay (int) ;
 int mmc_hostname (int ) ;
 int pr_info (char*,int ) ;
 int pr_warn (char*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_reset_tuning (struct sdhci_host*) ;
 int sdhci_send_tuning (struct sdhci_host*,int ) ;

__attribute__((used)) static void __sdhci_o2_execute_tuning(struct sdhci_host *host, u32 opcode)
{
 int i;

 sdhci_send_tuning(host, MMC_SEND_TUNING_BLOCK_HS200);

 for (i = 0; i < 150; i++) {
  u16 ctrl = sdhci_readw(host, SDHCI_HOST_CONTROL2);

  if (!(ctrl & SDHCI_CTRL_EXEC_TUNING)) {
   if (ctrl & SDHCI_CTRL_TUNED_CLK) {
    host->tuning_done = 1;
    return;
   }
   pr_warn("%s: HW tuning failed !\n",
    mmc_hostname(host->mmc));
   break;
  }

  mdelay(1);
 }

 pr_info("%s: Tuning failed, falling back to fixed sampling clock\n",
  mmc_hostname(host->mmc));
 sdhci_reset_tuning(host);
}

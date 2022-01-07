
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_host {int mmc; int tuning_done; } ;


 int EAGAIN ;
 int ETIMEDOUT ;
 int GLI_MAX_TUNING_LOOP ;
 int SDHCI_CTRL_EXEC_TUNING ;
 int SDHCI_CTRL_TUNED_CLK ;
 int SDHCI_HOST_CONTROL2 ;
 int gli_set_9750_rx_inv (struct sdhci_host*,int) ;
 int mmc_hostname (int ) ;
 int pr_info (char*,int ) ;
 int sdhci_abort_tuning (struct sdhci_host*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_reset_tuning (struct sdhci_host*) ;
 int sdhci_send_tuning (struct sdhci_host*,int ) ;
 int sdhci_start_tuning (struct sdhci_host*) ;

__attribute__((used)) static int __sdhci_execute_tuning_9750(struct sdhci_host *host, u32 opcode)
{
 int i;
 int rx_inv;

 for (rx_inv = 0; rx_inv < 2; rx_inv++) {
  gli_set_9750_rx_inv(host, !!rx_inv);
  sdhci_start_tuning(host);

  for (i = 0; i < GLI_MAX_TUNING_LOOP; i++) {
   u16 ctrl;

   sdhci_send_tuning(host, opcode);

   if (!host->tuning_done) {
    sdhci_abort_tuning(host, opcode);
    break;
   }

   ctrl = sdhci_readw(host, SDHCI_HOST_CONTROL2);
   if (!(ctrl & SDHCI_CTRL_EXEC_TUNING)) {
    if (ctrl & SDHCI_CTRL_TUNED_CLK)
     return 0;
    break;
   }
  }
 }
 if (!host->tuning_done) {
  pr_info("%s: Tuning timeout, falling back to fixed sampling clock\n",
   mmc_hostname(host->mmc));
  return -ETIMEDOUT;
 }

 pr_info("%s: Tuning failed, falling back to fixed sampling clock\n",
  mmc_hostname(host->mmc));
 sdhci_reset_tuning(host);

 return -EAGAIN;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_host {int tuning_loop_count; scalar_t__ tuning_delay; int mmc; int tuning_done; } ;


 int EAGAIN ;
 int ETIMEDOUT ;
 int SDHCI_CTRL_EXEC_TUNING ;
 int SDHCI_CTRL_TUNED_CLK ;
 int SDHCI_HOST_CONTROL2 ;
 int mdelay (scalar_t__) ;
 int mmc_hostname (int ) ;
 int pr_info (char*,int ) ;
 int sdhci_abort_tuning (struct sdhci_host*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_reset_tuning (struct sdhci_host*) ;
 int sdhci_send_tuning (struct sdhci_host*,int ) ;

__attribute__((used)) static int __sdhci_execute_tuning(struct sdhci_host *host, u32 opcode)
{
 int i;





 for (i = 0; i < host->tuning_loop_count; i++) {
  u16 ctrl;

  sdhci_send_tuning(host, opcode);

  if (!host->tuning_done) {
   pr_info("%s: Tuning timeout, falling back to fixed sampling clock\n",
    mmc_hostname(host->mmc));
   sdhci_abort_tuning(host, opcode);
   return -ETIMEDOUT;
  }


  if (host->tuning_delay > 0)
   mdelay(host->tuning_delay);

  ctrl = sdhci_readw(host, SDHCI_HOST_CONTROL2);
  if (!(ctrl & SDHCI_CTRL_EXEC_TUNING)) {
   if (ctrl & SDHCI_CTRL_TUNED_CLK)
    return 0;
   break;
  }

 }

 pr_info("%s: Tuning failed, falling back to fixed sampling clock\n",
  mmc_hostname(host->mmc));
 sdhci_reset_tuning(host);
 return -EAGAIN;
}

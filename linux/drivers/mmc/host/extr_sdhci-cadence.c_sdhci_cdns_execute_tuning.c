
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ timing; int mmc; } ;
struct mmc_host {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int MMC_SEND_TUNING_BLOCK_HS200 ;
 scalar_t__ MMC_TIMING_MMC_HS200 ;
 int SDHCI_CDNS_MAX_TUNING_LOOP ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int ,char*) ;
 int mmc_dev (int ) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 scalar_t__ mmc_send_tuning (int ,int ,int *) ;
 int sdhci_cdns_set_tune_val (struct sdhci_host*,int) ;
 int sdhci_execute_tuning (struct mmc_host*,int ) ;

__attribute__((used)) static int sdhci_cdns_execute_tuning(struct mmc_host *mmc, u32 opcode)
{
 struct sdhci_host *host = mmc_priv(mmc);
 int cur_streak = 0;
 int max_streak = 0;
 int end_of_streak = 0;
 int i;





 if (host->timing != MMC_TIMING_MMC_HS200)
  return sdhci_execute_tuning(mmc, opcode);

 if (WARN_ON(opcode != MMC_SEND_TUNING_BLOCK_HS200))
  return -EINVAL;

 for (i = 0; i < SDHCI_CDNS_MAX_TUNING_LOOP; i++) {
  if (sdhci_cdns_set_tune_val(host, i) ||
      mmc_send_tuning(host->mmc, opcode, ((void*)0))) {
   cur_streak = 0;
  } else {
   cur_streak++;
   if (cur_streak > max_streak) {
    max_streak = cur_streak;
    end_of_streak = i;
   }
  }
 }

 if (!max_streak) {
  dev_err(mmc_dev(host->mmc), "no tuning point found\n");
  return -EIO;
 }

 return sdhci_cdns_set_tune_val(host, end_of_streak - max_streak / 2);
}

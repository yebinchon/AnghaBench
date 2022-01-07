
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct sdhci_host {struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;


 int EIO ;
 int SDHCI_CLK_DELAY_SETTING ;
 int SIRF_TUNING_COUNT ;
 int dev_dbg (int ,char*,int ,...) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_send_tuning (struct mmc_host*,int ,int *) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

__attribute__((used)) static int sdhci_sirf_execute_tuning(struct sdhci_host *host, u32 opcode)
{
 int tuning_seq_cnt = 3;
 int phase;
 u8 tuned_phase_cnt = 0;
 int rc = 0, longest_range = 0;
 int start = -1, end = 0, tuning_value = -1, range = 0;
 u16 clock_setting;
 struct mmc_host *mmc = host->mmc;

 clock_setting = sdhci_readw(host, SDHCI_CLK_DELAY_SETTING);
 clock_setting &= ~0x3fff;

retry:
 phase = 0;
 tuned_phase_cnt = 0;
 do {
  sdhci_writel(host,
   clock_setting | phase,
   SDHCI_CLK_DELAY_SETTING);

  if (!mmc_send_tuning(mmc, opcode, ((void*)0))) {

   tuned_phase_cnt++;
   dev_dbg(mmc_dev(mmc), "%s: Found good phase = %d\n",
     mmc_hostname(mmc), phase);
   if (start == -1)
    start = phase;
   end = phase;
   range++;
   if (phase == (SIRF_TUNING_COUNT - 1)
    && range > longest_range)
    tuning_value = (start + end) / 2;
  } else {
   dev_dbg(mmc_dev(mmc), "%s: Found bad phase = %d\n",
     mmc_hostname(mmc), phase);
   if (range > longest_range) {
    tuning_value = (start + end) / 2;
    longest_range = range;
   }
   start = -1;
   end = range = 0;
  }
 } while (++phase < SIRF_TUNING_COUNT);

 if (tuned_phase_cnt && tuning_value > 0) {




  phase = tuning_value;
  sdhci_writel(host,
   clock_setting | phase,
   SDHCI_CLK_DELAY_SETTING);

  dev_dbg(mmc_dev(mmc), "%s: Setting the tuning phase to %d\n",
    mmc_hostname(mmc), phase);
 } else {
  if (--tuning_seq_cnt)
   goto retry;

  dev_dbg(mmc_dev(mmc), "%s: No tuning point found\n",
         mmc_hostname(mmc));
  rc = -EIO;
 }

 return rc;
}

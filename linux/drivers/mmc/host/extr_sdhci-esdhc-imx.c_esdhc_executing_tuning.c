
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int mmc; } ;


 int ESDHC_TUNE_CTRL_MAX ;
 int ESDHC_TUNE_CTRL_MIN ;
 int ESDHC_TUNE_CTRL_STEP ;
 int dev_dbg (int ,char*,char*,int,int) ;
 int esdhc_post_tuning (struct sdhci_host*) ;
 int esdhc_prepare_tuning (struct sdhci_host*,int) ;
 int mmc_dev (int ) ;
 int mmc_send_tuning (int ,int ,int *) ;

__attribute__((used)) static int esdhc_executing_tuning(struct sdhci_host *host, u32 opcode)
{
 int min, max, avg, ret;


 min = ESDHC_TUNE_CTRL_MIN;
 while (min < ESDHC_TUNE_CTRL_MAX) {
  esdhc_prepare_tuning(host, min);
  if (!mmc_send_tuning(host->mmc, opcode, ((void*)0)))
   break;
  min += ESDHC_TUNE_CTRL_STEP;
 }


 max = min + ESDHC_TUNE_CTRL_STEP;
 while (max < ESDHC_TUNE_CTRL_MAX) {
  esdhc_prepare_tuning(host, max);
  if (mmc_send_tuning(host->mmc, opcode, ((void*)0))) {
   max -= ESDHC_TUNE_CTRL_STEP;
   break;
  }
  max += ESDHC_TUNE_CTRL_STEP;
 }


 avg = (min + max) / 2;
 esdhc_prepare_tuning(host, avg);
 ret = mmc_send_tuning(host->mmc, opcode, ((void*)0));
 esdhc_post_tuning(host);

 dev_dbg(mmc_dev(host->mmc), "tuning %s at 0x%x ret %d\n",
  ret ? "failed" : "passed", avg, ret);

 return ret;
}

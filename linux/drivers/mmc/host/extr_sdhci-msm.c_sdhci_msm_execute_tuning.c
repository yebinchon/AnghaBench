
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {int use_cdr; int tuning_done; scalar_t__ saved_tuning_phase; } ;
struct sdhci_host {int flags; TYPE_1__* mmc; } ;
struct mmc_ios {int clock; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;


 scalar_t__ ARRAY_SIZE (scalar_t__*) ;
 int EIO ;
 int SDHCI_HS400_TUNING ;
 int dev_dbg (int ,char*,int ,...) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int mmc_send_tuning (struct mmc_host*,int ,int *) ;
 int msm_config_cm_dll_phase (struct sdhci_host*,scalar_t__) ;
 int msm_find_most_appropriate_phase (struct sdhci_host*,scalar_t__*,scalar_t__) ;
 int msm_init_cm_dll (struct sdhci_host*) ;
 int msm_set_clock_rate_for_bus_mode (struct sdhci_host*,int ) ;
 int sdhci_msm_hc_select_mode (struct sdhci_host*) ;
 int sdhci_msm_is_tuning_needed (struct sdhci_host*) ;
 int sdhci_msm_set_cdr (struct sdhci_host*,int) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static int sdhci_msm_execute_tuning(struct mmc_host *mmc, u32 opcode)
{
 struct sdhci_host *host = mmc_priv(mmc);
 int tuning_seq_cnt = 3;
 u8 phase, tuned_phases[16], tuned_phase_cnt = 0;
 int rc;
 struct mmc_ios ios = host->mmc->ios;
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);

 if (!sdhci_msm_is_tuning_needed(host)) {
  msm_host->use_cdr = 0;
  sdhci_msm_set_cdr(host, 0);
  return 0;
 }


 msm_host->use_cdr = 1;






 if (host->flags & SDHCI_HS400_TUNING) {
  sdhci_msm_hc_select_mode(host);
  msm_set_clock_rate_for_bus_mode(host, ios.clock);
  host->flags &= ~SDHCI_HS400_TUNING;
 }

retry:

 rc = msm_init_cm_dll(host);
 if (rc)
  return rc;

 phase = 0;
 do {

  rc = msm_config_cm_dll_phase(host, phase);
  if (rc)
   return rc;

  rc = mmc_send_tuning(mmc, opcode, ((void*)0));
  if (!rc) {

   tuned_phases[tuned_phase_cnt++] = phase;
   dev_dbg(mmc_dev(mmc), "%s: Found good phase = %d\n",
     mmc_hostname(mmc), phase);
  }
 } while (++phase < ARRAY_SIZE(tuned_phases));

 if (tuned_phase_cnt) {
  rc = msm_find_most_appropriate_phase(host, tuned_phases,
           tuned_phase_cnt);
  if (rc < 0)
   return rc;
  else
   phase = rc;





  rc = msm_config_cm_dll_phase(host, phase);
  if (rc)
   return rc;
  msm_host->saved_tuning_phase = phase;
  dev_dbg(mmc_dev(mmc), "%s: Setting the tuning phase to %d\n",
    mmc_hostname(mmc), phase);
 } else {
  if (--tuning_seq_cnt)
   goto retry;

  dev_dbg(mmc_dev(mmc), "%s: No tuning point found\n",
         mmc_hostname(mmc));
  rc = -EIO;
 }

 if (!rc)
  msm_host->tuning_done = 1;
 return rc;
}

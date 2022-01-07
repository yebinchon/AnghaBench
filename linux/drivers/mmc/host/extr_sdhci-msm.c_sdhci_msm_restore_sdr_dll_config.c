
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {int saved_tuning_phase; } ;
struct sdhci_host {int dummy; } ;


 int msm_config_cm_dll_phase (struct sdhci_host*,int ) ;
 int msm_init_cm_dll (struct sdhci_host*) ;
 int sdhci_msm_is_tuning_needed (struct sdhci_host*) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static int sdhci_msm_restore_sdr_dll_config(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);
 int ret;





 if (!sdhci_msm_is_tuning_needed(host))
  return 0;


 ret = msm_init_cm_dll(host);
 if (ret)
  return ret;


 ret = msm_config_cm_dll_phase(host, msm_host->saved_tuning_phase);

 return ret;
}

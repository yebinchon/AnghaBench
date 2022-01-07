
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_offset {int core_pwrctl_ctl; int core_pwrctl_mask; int core_pwrctl_status; } ;
struct sdhci_msm_host {struct sdhci_msm_offset* offset; } ;
struct sdhci_host {int mmc; } ;


 int mmc_hostname (int ) ;
 int msm_host_readl (struct sdhci_msm_host*,struct sdhci_host*,int ) ;
 int pr_err (char*,int ,int ,int ,int ) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_msm_dump_pwr_ctrl_regs(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);
 const struct sdhci_msm_offset *msm_offset =
     msm_host->offset;

 pr_err("%s: PWRCTL_STATUS: 0x%08x | PWRCTL_MASK: 0x%08x | PWRCTL_CTL: 0x%08x\n",
  mmc_hostname(host->mmc),
  msm_host_readl(msm_host, host, msm_offset->core_pwrctl_status),
  msm_host_readl(msm_host, host, msm_offset->core_pwrctl_mask),
  msm_host_readl(msm_host, host, msm_offset->core_pwrctl_ctl));
}

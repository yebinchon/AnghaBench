
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {TYPE_1__* bulk_clks; } ;
struct sdhci_host {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* clk; } ;


 int ULONG_MAX ;
 unsigned int clk_round_rate (struct clk*,int ) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static unsigned int sdhci_msm_get_max_clock(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);
 struct clk *core_clk = msm_host->bulk_clks[0].clk;

 return clk_round_rate(core_clk, ULONG_MAX);
}

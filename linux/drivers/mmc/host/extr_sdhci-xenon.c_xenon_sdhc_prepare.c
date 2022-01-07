
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xenon_priv {int sdhc_id; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;


 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int xenon_enable_sdhc (struct sdhci_host*,int ) ;
 int xenon_enable_sdhc_parallel_tran (struct sdhci_host*,int ) ;
 int xenon_mask_cmd_conflict_err (struct sdhci_host*) ;
 int xenon_set_acg (struct sdhci_host*,int) ;
 int xenon_set_sdclk_off_idle (struct sdhci_host*,int ,int) ;

__attribute__((used)) static int xenon_sdhc_prepare(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 u8 sdhc_id = priv->sdhc_id;


 xenon_enable_sdhc(host, sdhc_id);


 xenon_set_acg(host, 1);


 xenon_enable_sdhc_parallel_tran(host, sdhc_id);


 xenon_set_sdclk_off_idle(host, sdhc_id, 0);

 xenon_mask_cmd_conflict_err(host);

 return 0;
}

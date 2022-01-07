
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
 int sdhci_reset (struct sdhci_host*,int ) ;
 int xenon_reset_exit (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void xenon_reset(struct sdhci_host *host, u8 mask)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);

 sdhci_reset(host, mask);
 xenon_reset_exit(host, priv->sdhc_id, mask);
}

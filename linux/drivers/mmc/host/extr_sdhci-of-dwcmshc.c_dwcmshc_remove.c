
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int clk; } ;
struct sdhci_host {int dummy; } ;
struct platform_device {int dummy; } ;
struct dwcmshc_priv {int bus_clk; } ;


 int clk_disable_unprepare (int ) ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct dwcmshc_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_remove_host (struct sdhci_host*,int ) ;

__attribute__((used)) static int dwcmshc_remove(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct dwcmshc_priv *priv = sdhci_pltfm_priv(pltfm_host);

 sdhci_remove_host(host, 0);

 clk_disable_unprepare(pltfm_host->clk);
 clk_disable_unprepare(priv->bus_clk);

 sdhci_pltfm_free(pdev);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenon_priv {int axi_clk; } ;
struct sdhci_pltfm_host {int clk; } ;
struct sdhci_host {int dummy; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_remove_host (struct sdhci_host*,int ) ;
 int xenon_sdhc_unprepare (struct sdhci_host*) ;

__attribute__((used)) static int xenon_remove(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);

 pm_runtime_get_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);

 sdhci_remove_host(host, 0);

 xenon_sdhc_unprepare(host);
 clk_disable_unprepare(priv->axi_clk);
 clk_disable_unprepare(pltfm_host->clk);

 sdhci_pltfm_free(pdev);

 return 0;
}

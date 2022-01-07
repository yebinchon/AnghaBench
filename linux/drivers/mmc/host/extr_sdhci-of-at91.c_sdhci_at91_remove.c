
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct sdhci_at91_priv {struct clk* mainck; struct clk* hclock; struct clk* gck; } ;
struct platform_device {int dev; } ;
struct clk {int dummy; } ;


 int clk_disable_unprepare (struct clk*) ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 struct sdhci_at91_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 int sdhci_pltfm_unregister (struct platform_device*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static int sdhci_at91_remove(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_at91_priv *priv = sdhci_pltfm_priv(pltfm_host);
 struct clk *gck = priv->gck;
 struct clk *hclock = priv->hclock;
 struct clk *mainck = priv->mainck;

 pm_runtime_get_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);

 sdhci_pltfm_unregister(pdev);

 clk_disable_unprepare(gck);
 clk_disable_unprepare(hclock);
 clk_disable_unprepare(mainck);

 return 0;
}

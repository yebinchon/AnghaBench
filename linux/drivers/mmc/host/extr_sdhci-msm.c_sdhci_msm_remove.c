
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {int bus_clk; int bulk_clks; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int IS_ERR (int ) ;
 scalar_t__ SDHCI_INT_STATUS ;
 int clk_bulk_disable_unprepare (int ,int ) ;
 int clk_disable_unprepare (int ) ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int readl_relaxed (scalar_t__) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_remove_host (struct sdhci_host*,int) ;

__attribute__((used)) static int sdhci_msm_remove(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);
 int dead = (readl_relaxed(host->ioaddr + SDHCI_INT_STATUS) ==
      0xffffffff);

 sdhci_remove_host(host, dead);

 pm_runtime_get_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);

 clk_bulk_disable_unprepare(ARRAY_SIZE(msm_host->bulk_clks),
       msm_host->bulk_clks);
 if (!IS_ERR(msm_host->bus_clk))
  clk_disable_unprepare(msm_host->bus_clk);
 sdhci_pltfm_free(pdev);
 return 0;
}

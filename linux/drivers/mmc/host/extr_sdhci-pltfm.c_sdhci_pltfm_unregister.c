
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int clk; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct platform_device {int dummy; } ;


 scalar_t__ SDHCI_INT_STATUS ;
 int clk_disable_unprepare (int ) ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int readl (scalar_t__) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_remove_host (struct sdhci_host*,int) ;

int sdhci_pltfm_unregister(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 int dead = (readl(host->ioaddr + SDHCI_INT_STATUS) == 0xffffffff);

 sdhci_remove_host(host, dead);
 clk_disable_unprepare(pltfm_host->clk);
 sdhci_pltfm_free(pdev);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int clk; } ;
struct sdhci_host {int dummy; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_remove_host (struct sdhci_host*,int) ;

__attribute__((used)) static int aspeed_sdhci_remove(struct platform_device *pdev)
{
 struct sdhci_pltfm_host *pltfm_host;
 struct sdhci_host *host;
 int dead = 0;

 host = platform_get_drvdata(pdev);
 pltfm_host = sdhci_priv(host);

 sdhci_remove_host(host, dead);

 clk_disable_unprepare(pltfm_host->clk);

 sdhci_pltfm_free(pdev);

 return 0;
}

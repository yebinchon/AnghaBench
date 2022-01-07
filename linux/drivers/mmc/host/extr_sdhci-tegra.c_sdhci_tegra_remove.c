
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_tegra {int rst; } ;
struct sdhci_pltfm_host {int clk; } ;
struct sdhci_host {int dummy; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_remove_host (struct sdhci_host*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int sdhci_tegra_remove(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);

 sdhci_remove_host(host, 0);

 reset_control_assert(tegra_host->rst);
 usleep_range(2000, 4000);
 clk_disable_unprepare(pltfm_host->clk);

 sdhci_pltfm_free(pdev);

 return 0;
}

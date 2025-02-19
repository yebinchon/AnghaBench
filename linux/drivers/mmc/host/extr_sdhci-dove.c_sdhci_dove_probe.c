
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_host {int mmc; } ;
struct platform_device {int dev; } ;


 scalar_t__ IS_ERR (struct sdhci_host*) ;
 int PTR_ERR (struct sdhci_host*) ;
 int clk_disable_unprepare (struct sdhci_host*) ;
 int clk_prepare_enable (struct sdhci_host*) ;
 struct sdhci_host* devm_clk_get (int *,int *) ;
 int mmc_of_parse (int ) ;
 int sdhci_add_host (struct sdhci_host*) ;
 int sdhci_dove_pdata ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_host* sdhci_pltfm_init (struct platform_device*,int *,int ) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static int sdhci_dove_probe(struct platform_device *pdev)
{
 struct sdhci_host *host;
 struct sdhci_pltfm_host *pltfm_host;
 int ret;

 host = sdhci_pltfm_init(pdev, &sdhci_dove_pdata, 0);
 if (IS_ERR(host))
  return PTR_ERR(host);

 pltfm_host = sdhci_priv(host);
 pltfm_host->clk = devm_clk_get(&pdev->dev, ((void*)0));

 if (!IS_ERR(pltfm_host->clk))
  clk_prepare_enable(pltfm_host->clk);

 ret = mmc_of_parse(host->mmc);
 if (ret)
  goto err_sdhci_add;

 ret = sdhci_add_host(host);
 if (ret)
  goto err_sdhci_add;

 return 0;

err_sdhci_add:
 clk_disable_unprepare(pltfm_host->clk);
 sdhci_pltfm_free(pdev);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_host {int mmc; } ;
struct platform_device {int dev; } ;
struct clk {int mmc; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct sdhci_host*) ;
 int PTR_ERR (struct sdhci_host*) ;
 int clk_disable_unprepare (struct sdhci_host*) ;
 int clk_prepare_enable (struct sdhci_host*) ;
 int dev_err (int *,char*) ;
 struct sdhci_host* devm_clk_get (int *,int *) ;
 int mmc_gpiod_request_cd (int ,char*,int ,int,int ,int *) ;
 int mmc_gpiod_request_cd_irq (int ) ;
 int sdhci_add_host (struct sdhci_host*) ;
 int sdhci_get_of_property (struct platform_device*) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_host* sdhci_pltfm_init (struct platform_device*,int *,int ) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_remove_host (struct sdhci_host*,int ) ;
 int sdhci_sirf_pdata ;

__attribute__((used)) static int sdhci_sirf_probe(struct platform_device *pdev)
{
 struct sdhci_host *host;
 struct sdhci_pltfm_host *pltfm_host;
 struct clk *clk;
 int ret;

 clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "unable to get clock");
  return PTR_ERR(clk);
 }

 host = sdhci_pltfm_init(pdev, &sdhci_sirf_pdata, 0);
 if (IS_ERR(host))
  return PTR_ERR(host);

 pltfm_host = sdhci_priv(host);
 pltfm_host->clk = clk;

 sdhci_get_of_property(pdev);

 ret = clk_prepare_enable(pltfm_host->clk);
 if (ret)
  goto err_clk_prepare;

 ret = sdhci_add_host(host);
 if (ret)
  goto err_sdhci_add;





 ret = mmc_gpiod_request_cd(host->mmc, "cd", 0, 0, 0, ((void*)0));
 if (ret == -EPROBE_DEFER)
  goto err_request_cd;
 if (!ret)
  mmc_gpiod_request_cd_irq(host->mmc);

 return 0;

err_request_cd:
 sdhci_remove_host(host, 0);
err_sdhci_add:
 clk_disable_unprepare(pltfm_host->clk);
err_clk_prepare:
 sdhci_pltfm_free(pdev);
 return ret;
}

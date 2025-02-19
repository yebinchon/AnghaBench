
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenon_priv {struct sdhci_host* axi_clk; } ;
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_host {int mmc; } ;
struct platform_device {int dev; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct sdhci_host*) ;
 int PTR_ERR (struct sdhci_host*) ;
 int clk_disable_unprepare (struct sdhci_host*) ;
 int clk_prepare_enable (struct sdhci_host*) ;
 int dev_err (int *,char*,int) ;
 void* devm_clk_get (int *,char*) ;
 int mmc_of_parse (int ) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_noresume (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int) ;
 int pm_runtime_use_autosuspend (int *) ;
 int pm_suspend_ignore_children (int *,int) ;
 int sdhci_add_host (struct sdhci_host*) ;
 int sdhci_get_of_property (struct platform_device*) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_host* sdhci_pltfm_init (struct platform_device*,int *,int) ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_xenon_pdata ;
 int xenon_probe_dt (struct platform_device*) ;
 int xenon_replace_mmc_host_ops (struct sdhci_host*) ;
 int xenon_sdhc_prepare (struct sdhci_host*) ;
 int xenon_sdhc_unprepare (struct sdhci_host*) ;
 int xenon_set_acg (struct sdhci_host*,int) ;

__attribute__((used)) static int xenon_probe(struct platform_device *pdev)
{
 struct sdhci_pltfm_host *pltfm_host;
 struct sdhci_host *host;
 struct xenon_priv *priv;
 int err;

 host = sdhci_pltfm_init(pdev, &sdhci_xenon_pdata,
    sizeof(struct xenon_priv));
 if (IS_ERR(host))
  return PTR_ERR(host);

 pltfm_host = sdhci_priv(host);
 priv = sdhci_pltfm_priv(pltfm_host);





 xenon_replace_mmc_host_ops(host);

 pltfm_host->clk = devm_clk_get(&pdev->dev, "core");
 if (IS_ERR(pltfm_host->clk)) {
  err = PTR_ERR(pltfm_host->clk);
  dev_err(&pdev->dev, "Failed to setup input clk: %d\n", err);
  goto free_pltfm;
 }
 err = clk_prepare_enable(pltfm_host->clk);
 if (err)
  goto free_pltfm;

 priv->axi_clk = devm_clk_get(&pdev->dev, "axi");
 if (IS_ERR(priv->axi_clk)) {
  err = PTR_ERR(priv->axi_clk);
  if (err == -EPROBE_DEFER)
   goto err_clk;
 } else {
  err = clk_prepare_enable(priv->axi_clk);
  if (err)
   goto err_clk;
 }

 err = mmc_of_parse(host->mmc);
 if (err)
  goto err_clk_axi;

 sdhci_get_of_property(pdev);

 xenon_set_acg(host, 0);


 err = xenon_probe_dt(pdev);
 if (err)
  goto err_clk_axi;

 err = xenon_sdhc_prepare(host);
 if (err)
  goto err_clk_axi;

 pm_runtime_get_noresume(&pdev->dev);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_enable(&pdev->dev);
 pm_suspend_ignore_children(&pdev->dev, 1);

 err = sdhci_add_host(host);
 if (err)
  goto remove_sdhc;

 pm_runtime_put_autosuspend(&pdev->dev);

 return 0;

remove_sdhc:
 pm_runtime_disable(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);
 xenon_sdhc_unprepare(host);
err_clk_axi:
 clk_disable_unprepare(priv->axi_clk);
err_clk:
 clk_disable_unprepare(pltfm_host->clk);
free_pltfm:
 sdhci_pltfm_free(pdev);
 return err;
}

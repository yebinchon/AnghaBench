
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_host {int mmc; int adma_table_cnt; } ;
struct platform_device {int dev; } ;
struct dwcmshc_priv {struct sdhci_host* bus_clk; } ;


 scalar_t__ DIV_ROUND_UP_ULL (int ,int ) ;
 scalar_t__ IS_ERR (struct sdhci_host*) ;
 int PTR_ERR (struct sdhci_host*) ;
 scalar_t__ SDHCI_MAX_SEGS ;
 int SZ_128M ;
 int clk_disable_unprepare (struct sdhci_host*) ;
 int clk_prepare_enable (struct sdhci_host*) ;
 int dev_err (int *,char*,int) ;
 void* devm_clk_get (int *,char*) ;
 int dma_get_required_mask (int *) ;
 int mmc_of_parse (int ) ;
 int sdhci_add_host (struct sdhci_host*) ;
 int sdhci_dwcmshc_pdata ;
 int sdhci_get_of_property (struct platform_device*) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_host* sdhci_pltfm_init (struct platform_device*,int *,int) ;
 struct dwcmshc_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static int dwcmshc_probe(struct platform_device *pdev)
{
 struct sdhci_pltfm_host *pltfm_host;
 struct sdhci_host *host;
 struct dwcmshc_priv *priv;
 int err;
 u32 extra;

 host = sdhci_pltfm_init(pdev, &sdhci_dwcmshc_pdata,
    sizeof(struct dwcmshc_priv));
 if (IS_ERR(host))
  return PTR_ERR(host);




 extra = DIV_ROUND_UP_ULL(dma_get_required_mask(&pdev->dev), SZ_128M);
 if (extra > SDHCI_MAX_SEGS)
  extra = SDHCI_MAX_SEGS;
 host->adma_table_cnt += extra;

 pltfm_host = sdhci_priv(host);
 priv = sdhci_pltfm_priv(pltfm_host);

 pltfm_host->clk = devm_clk_get(&pdev->dev, "core");
 if (IS_ERR(pltfm_host->clk)) {
  err = PTR_ERR(pltfm_host->clk);
  dev_err(&pdev->dev, "failed to get core clk: %d\n", err);
  goto free_pltfm;
 }
 err = clk_prepare_enable(pltfm_host->clk);
 if (err)
  goto free_pltfm;

 priv->bus_clk = devm_clk_get(&pdev->dev, "bus");
 if (!IS_ERR(priv->bus_clk))
  clk_prepare_enable(priv->bus_clk);

 err = mmc_of_parse(host->mmc);
 if (err)
  goto err_clk;

 sdhci_get_of_property(pdev);

 err = sdhci_add_host(host);
 if (err)
  goto err_clk;

 return 0;

err_clk:
 clk_disable_unprepare(pltfm_host->clk);
 clk_disable_unprepare(priv->bus_clk);
free_pltfm:
 sdhci_pltfm_free(pdev);
 return err;
}

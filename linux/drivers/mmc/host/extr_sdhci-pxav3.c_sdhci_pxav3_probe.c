
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_pxa_platdata {int flags; int quirks; int quirks2; int host_caps; int host_caps2; int pm_caps; } ;
struct sdhci_pxa {struct sdhci_host* clk_core; struct sdhci_host* clk_io; } ;
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_host {int quirks; int quirks2; TYPE_1__* mmc; } ;
struct device {struct sdhci_pxa_platdata* platform_data; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int caps; int caps2; int pm_caps; } ;


 scalar_t__ IS_ERR (struct sdhci_host*) ;
 int MMC_CAP_1_8V_DDR ;
 int MMC_CAP_8_BIT_DATA ;
 int MMC_CAP_NONREMOVABLE ;
 int MMC_PM_WAKE_SDIO_IRQ ;
 int PTR_ERR (struct sdhci_host*) ;
 int PXAV3_RPM_DELAY_MS ;
 int PXA_FLAG_CARD_PERMANENT ;
 int PXA_FLAG_SD_8_BIT_CAPABLE_SLOT ;
 int armada_38x_quirks (struct platform_device*,struct sdhci_host*) ;
 int clk_disable_unprepare (struct sdhci_host*) ;
 int clk_prepare_enable (struct sdhci_host*) ;
 int dev_err (struct device*,char*) ;
 int device_init_wakeup (struct device*,int) ;
 void* devm_clk_get (struct device*,char*) ;
 int mmc_of_parse (TYPE_1__*) ;
 int mv_conf_mbus_windows (struct platform_device*,int ) ;
 int mv_mbus_dram_info () ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_match_ptr (int ) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int pm_suspend_ignore_children (struct device*,int) ;
 struct sdhci_pxa_platdata* pxav3_get_mmc_pdata (struct device*) ;
 int sdhci_add_host (struct sdhci_host*) ;
 int sdhci_get_of_property (struct platform_device*) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_host* sdhci_pltfm_init (struct platform_device*,int *,int) ;
 struct sdhci_pxa* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_pxav3_of_match ;
 int sdhci_pxav3_pdata ;

__attribute__((used)) static int sdhci_pxav3_probe(struct platform_device *pdev)
{
 struct sdhci_pltfm_host *pltfm_host;
 struct sdhci_pxa_platdata *pdata = pdev->dev.platform_data;
 struct device *dev = &pdev->dev;
 struct device_node *np = pdev->dev.of_node;
 struct sdhci_host *host = ((void*)0);
 struct sdhci_pxa *pxa = ((void*)0);
 const struct of_device_id *match;
 int ret;

 host = sdhci_pltfm_init(pdev, &sdhci_pxav3_pdata, sizeof(*pxa));
 if (IS_ERR(host))
  return PTR_ERR(host);

 pltfm_host = sdhci_priv(host);
 pxa = sdhci_pltfm_priv(pltfm_host);

 pxa->clk_io = devm_clk_get(dev, "io");
 if (IS_ERR(pxa->clk_io))
  pxa->clk_io = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(pxa->clk_io)) {
  dev_err(dev, "failed to get io clock\n");
  ret = PTR_ERR(pxa->clk_io);
  goto err_clk_get;
 }
 pltfm_host->clk = pxa->clk_io;
 clk_prepare_enable(pxa->clk_io);

 pxa->clk_core = devm_clk_get(dev, "core");
 if (!IS_ERR(pxa->clk_core))
  clk_prepare_enable(pxa->clk_core);


 host->mmc->caps |= MMC_CAP_1_8V_DDR;

 if (of_device_is_compatible(np, "marvell,armada-380-sdhci")) {
  ret = armada_38x_quirks(pdev, host);
  if (ret < 0)
   goto err_mbus_win;
  ret = mv_conf_mbus_windows(pdev, mv_mbus_dram_info());
  if (ret < 0)
   goto err_mbus_win;
 }

 match = of_match_device(of_match_ptr(sdhci_pxav3_of_match), &pdev->dev);
 if (match) {
  ret = mmc_of_parse(host->mmc);
  if (ret)
   goto err_of_parse;
  sdhci_get_of_property(pdev);
  pdata = pxav3_get_mmc_pdata(dev);
  pdev->dev.platform_data = pdata;
 } else if (pdata) {

  if (pdata->flags & PXA_FLAG_CARD_PERMANENT)
   host->mmc->caps |= MMC_CAP_NONREMOVABLE;


  if (pdata->flags & PXA_FLAG_SD_8_BIT_CAPABLE_SLOT)
   host->mmc->caps |= MMC_CAP_8_BIT_DATA;

  if (pdata->quirks)
   host->quirks |= pdata->quirks;
  if (pdata->quirks2)
   host->quirks2 |= pdata->quirks2;
  if (pdata->host_caps)
   host->mmc->caps |= pdata->host_caps;
  if (pdata->host_caps2)
   host->mmc->caps2 |= pdata->host_caps2;
  if (pdata->pm_caps)
   host->mmc->pm_caps |= pdata->pm_caps;
 }

 pm_runtime_get_noresume(&pdev->dev);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_set_autosuspend_delay(&pdev->dev, PXAV3_RPM_DELAY_MS);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_enable(&pdev->dev);
 pm_suspend_ignore_children(&pdev->dev, 1);

 ret = sdhci_add_host(host);
 if (ret)
  goto err_add_host;

 if (host->mmc->pm_caps & MMC_PM_WAKE_SDIO_IRQ)
  device_init_wakeup(&pdev->dev, 1);

 pm_runtime_put_autosuspend(&pdev->dev);

 return 0;

err_add_host:
 pm_runtime_disable(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);
err_of_parse:
err_mbus_win:
 clk_disable_unprepare(pxa->clk_io);
 clk_disable_unprepare(pxa->clk_core);
err_clk_get:
 sdhci_pltfm_free(pdev);
 return ret;
}

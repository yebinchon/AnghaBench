
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_pltfm_data {int dummy; } ;
struct sdhci_host {TYPE_1__* mmc; int quirks; int quirks2; } ;
struct sdhci_at91_priv {int restore_needed; struct sdhci_host* hclock; struct sdhci_host* mainck; struct sdhci_host* gck; } ;
struct platform_device {int dev; } ;
struct of_device_id {struct sdhci_pltfm_data* data; } ;
struct TYPE_4__ {int caps; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct sdhci_host*) ;
 int MMC_CAP_NEEDS_POLL ;
 int MMC_CAP_NONREMOVABLE ;
 int PTR_ERR (struct sdhci_host*) ;
 int SDHCI_QUIRK2_BROKEN_HS200 ;
 int SDHCI_QUIRK_BROKEN_CARD_DETECTION ;
 int clk_disable_unprepare (struct sdhci_host*) ;
 int dev_err (int *,char*) ;
 void* devm_clk_get (int *,char*) ;
 scalar_t__ mmc_card_is_removable (TYPE_1__*) ;
 scalar_t__ mmc_gpio_get_cd (TYPE_1__*) ;
 int mmc_of_parse (TYPE_1__*) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_noresume (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int) ;
 int pm_runtime_set_suspended (int *) ;
 int pm_runtime_use_autosuspend (int *) ;
 int sdhci_add_host (struct sdhci_host*) ;
 int sdhci_at91_dt_match ;
 int sdhci_at91_set_clks_presets (int *) ;
 int sdhci_at91_set_force_card_detect (struct sdhci_host*) ;
 int sdhci_get_of_property (struct platform_device*) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct sdhci_host* sdhci_pltfm_init (struct platform_device*,struct sdhci_pltfm_data const*,int) ;
 struct sdhci_at91_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static int sdhci_at91_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 const struct sdhci_pltfm_data *soc_data;
 struct sdhci_host *host;
 struct sdhci_pltfm_host *pltfm_host;
 struct sdhci_at91_priv *priv;
 int ret;

 match = of_match_device(sdhci_at91_dt_match, &pdev->dev);
 if (!match)
  return -EINVAL;
 soc_data = match->data;

 host = sdhci_pltfm_init(pdev, soc_data, sizeof(*priv));
 if (IS_ERR(host))
  return PTR_ERR(host);

 pltfm_host = sdhci_priv(host);
 priv = sdhci_pltfm_priv(pltfm_host);

 priv->mainck = devm_clk_get(&pdev->dev, "baseclk");
 if (IS_ERR(priv->mainck)) {
  dev_err(&pdev->dev, "failed to get baseclk\n");
  return PTR_ERR(priv->mainck);
 }

 priv->hclock = devm_clk_get(&pdev->dev, "hclock");
 if (IS_ERR(priv->hclock)) {
  dev_err(&pdev->dev, "failed to get hclock\n");
  return PTR_ERR(priv->hclock);
 }

 priv->gck = devm_clk_get(&pdev->dev, "multclk");
 if (IS_ERR(priv->gck)) {
  dev_err(&pdev->dev, "failed to get multclk\n");
  return PTR_ERR(priv->gck);
 }

 ret = sdhci_at91_set_clks_presets(&pdev->dev);
 if (ret)
  goto sdhci_pltfm_free;

 priv->restore_needed = 0;

 ret = mmc_of_parse(host->mmc);
 if (ret)
  goto clocks_disable_unprepare;

 sdhci_get_of_property(pdev);

 pm_runtime_get_noresume(&pdev->dev);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);
 pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
 pm_runtime_use_autosuspend(&pdev->dev);


 host->quirks2 = SDHCI_QUIRK2_BROKEN_HS200;

 ret = sdhci_add_host(host);
 if (ret)
  goto pm_runtime_disable;
 if (mmc_card_is_removable(host->mmc) &&
     mmc_gpio_get_cd(host->mmc) < 0) {
  host->mmc->caps |= MMC_CAP_NEEDS_POLL;
  host->quirks &= ~SDHCI_QUIRK_BROKEN_CARD_DETECTION;
 }
 if (host->mmc->caps & MMC_CAP_NONREMOVABLE)
  sdhci_at91_set_force_card_detect(host);

 pm_runtime_put_autosuspend(&pdev->dev);

 return 0;

pm_runtime_disable:
 pm_runtime_disable(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);
clocks_disable_unprepare:
 clk_disable_unprepare(priv->gck);
 clk_disable_unprepare(priv->mainck);
 clk_disable_unprepare(priv->hclock);
sdhci_pltfm_free:
 sdhci_pltfm_free(pdev);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_data {int ocr_mask; int max_segs; int max_blk_count; int flags; } ;
struct uniphier_sd_priv {unsigned long caps; struct tmio_mmc_host* rst_hw; struct tmio_mmc_data tmio_data; struct tmio_mmc_host* rst_br; struct tmio_mmc_host* rst; struct tmio_mmc_host* clk; } ;
struct tmio_mmc_host {int bus_shift; int (* clk_enable ) (struct tmio_mmc_host*) ;TYPE_1__* mmc; int set_clock; int clk_disable; int * dma_ops; int hw_reset; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int caps; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct tmio_mmc_host*) ;
 int MMC_CAP_HW_RESET ;
 int MMC_CAP_UHS ;
 int MMC_VDD_165_195 ;
 int MMC_VDD_32_33 ;
 int MMC_VDD_33_34 ;
 int PTR_ERR (struct tmio_mmc_host*) ;
 int TMIO_MMC_32BIT_DATA_PORT ;
 int U16_MAX ;
 int UNIPHIER_SD_CAP_EXTENDED_IP ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*,int) ;
 struct tmio_mmc_host* devm_clk_get (struct device*,int *) ;
 struct uniphier_sd_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct tmio_mmc_host*) ;
 struct tmio_mmc_host* devm_reset_control_get_exclusive (struct device*,char*) ;
 void* devm_reset_control_get_shared (struct device*,char*) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct tmio_mmc_host* tmio_mmc_host_alloc (struct platform_device*,struct tmio_mmc_data*) ;
 int tmio_mmc_host_free (struct tmio_mmc_host*) ;
 int tmio_mmc_host_probe (struct tmio_mmc_host*) ;
 int tmio_mmc_irq ;
 int uniphier_sd_clk_disable ;
 int uniphier_sd_clk_enable (struct tmio_mmc_host*) ;
 int uniphier_sd_external_dma_ops ;
 int uniphier_sd_host_init (struct tmio_mmc_host*) ;
 int uniphier_sd_hw_reset ;
 int uniphier_sd_internal_dma_ops ;
 int uniphier_sd_set_clock ;
 int uniphier_sd_uhs_init (struct tmio_mmc_host*,struct uniphier_sd_priv*) ;

__attribute__((used)) static int uniphier_sd_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct uniphier_sd_priv *priv;
 struct tmio_mmc_data *tmio_data;
 struct tmio_mmc_host *host;
 int irq, ret;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->caps = (unsigned long)of_device_get_match_data(dev);

 priv->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  dev_err(dev, "failed to get clock\n");
  return PTR_ERR(priv->clk);
 }

 priv->rst = devm_reset_control_get_shared(dev, "host");
 if (IS_ERR(priv->rst)) {
  dev_err(dev, "failed to get host reset\n");
  return PTR_ERR(priv->rst);
 }


 if (!(priv->caps & UNIPHIER_SD_CAP_EXTENDED_IP)) {
  priv->rst_br = devm_reset_control_get_shared(dev, "bridge");
  if (IS_ERR(priv->rst_br)) {
   dev_err(dev, "failed to get bridge reset\n");
   return PTR_ERR(priv->rst_br);
  }
 }

 tmio_data = &priv->tmio_data;
 tmio_data->flags |= TMIO_MMC_32BIT_DATA_PORT;

 host = tmio_mmc_host_alloc(pdev, tmio_data);
 if (IS_ERR(host))
  return PTR_ERR(host);

 if (host->mmc->caps & MMC_CAP_HW_RESET) {
  priv->rst_hw = devm_reset_control_get_exclusive(dev, "hw");
  if (IS_ERR(priv->rst_hw)) {
   dev_err(dev, "failed to get hw reset\n");
   ret = PTR_ERR(priv->rst_hw);
   goto free_host;
  }
  host->hw_reset = uniphier_sd_hw_reset;
 }

 if (host->mmc->caps & MMC_CAP_UHS) {
  ret = uniphier_sd_uhs_init(host, priv);
  if (ret) {
   dev_warn(dev,
     "failed to setup UHS (error %d).  Disabling UHS.",
     ret);
   host->mmc->caps &= ~MMC_CAP_UHS;
  }
 }

 ret = devm_request_irq(dev, irq, tmio_mmc_irq, IRQF_SHARED,
          dev_name(dev), host);
 if (ret)
  goto free_host;

 if (priv->caps & UNIPHIER_SD_CAP_EXTENDED_IP)
  host->dma_ops = &uniphier_sd_internal_dma_ops;
 else
  host->dma_ops = &uniphier_sd_external_dma_ops;

 host->bus_shift = 1;
 host->clk_enable = uniphier_sd_clk_enable;
 host->clk_disable = uniphier_sd_clk_disable;
 host->set_clock = uniphier_sd_set_clock;

 ret = uniphier_sd_clk_enable(host);
 if (ret)
  goto free_host;

 uniphier_sd_host_init(host);

 tmio_data->ocr_mask = MMC_VDD_32_33 | MMC_VDD_33_34;
 if (host->mmc->caps & MMC_CAP_UHS)
  tmio_data->ocr_mask |= MMC_VDD_165_195;

 tmio_data->max_segs = 1;
 tmio_data->max_blk_count = U16_MAX;

 ret = tmio_mmc_host_probe(host);
 if (ret)
  goto free_host;

 return 0;

free_host:
 tmio_mmc_host_free(host);

 return ret;
}

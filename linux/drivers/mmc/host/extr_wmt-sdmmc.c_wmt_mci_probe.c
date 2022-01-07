
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct wmt_mci_priv {int power_inverted; int cd_inverted; int irq_regular; int irq_dma; int sdmmc_base; int clk_sdmmc; int dma_desc_buffer; int dma_desc_device_addr; TYPE_1__* dev; struct mmc_host* mmc; } ;
struct wmt_mci_caps {int max_segs; int max_blk_size; int max_seg_size; int caps; int ocr_avail; int f_max; int f_min; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct wmt_mci_caps* data; } ;
struct mmc_host {int max_segs; int max_req_size; int max_blk_count; int max_blk_size; int max_seg_size; int caps; int ocr_avail; int f_max; int f_min; int * ops; } ;
struct device_node {int dummy; } ;


 int EFAULT ;
 int ENOMEM ;
 int ENXIO ;
 int EPERM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_put (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 int dma_alloc_coherent (TYPE_1__*,int,int *,int ) ;
 int free_irq (int,struct wmt_mci_priv*) ;
 int iounmap (int ) ;
 int irq_of_parse_and_map (struct device_node*,int) ;
 int mmc_add_host (struct mmc_host*) ;
 struct mmc_host* mmc_alloc_host (int,TYPE_1__*) ;
 int mmc_free_host (struct mmc_host*) ;
 struct wmt_mci_priv* mmc_priv (struct mmc_host*) ;
 int of_clk_get (struct device_node*,int ) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;
 int of_iomap (struct device_node*,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,struct mmc_host*) ;
 int request_irq (int,int ,int ,char*,struct wmt_mci_priv*) ;
 int wmt_mci_dma_isr ;
 int wmt_mci_dt_ids ;
 int wmt_mci_ops ;
 int wmt_mci_regular_isr ;
 int wmt_reset_hardware (struct mmc_host*) ;

__attribute__((used)) static int wmt_mci_probe(struct platform_device *pdev)
{
 struct mmc_host *mmc;
 struct wmt_mci_priv *priv;
 struct device_node *np = pdev->dev.of_node;
 const struct of_device_id *of_id =
  of_match_device(wmt_mci_dt_ids, &pdev->dev);
 const struct wmt_mci_caps *wmt_caps;
 int ret;
 int regular_irq, dma_irq;

 if (!of_id || !of_id->data) {
  dev_err(&pdev->dev, "Controller capabilities data missing\n");
  return -EFAULT;
 }

 wmt_caps = of_id->data;

 if (!np) {
  dev_err(&pdev->dev, "Missing SDMMC description in devicetree\n");
  return -EFAULT;
 }

 regular_irq = irq_of_parse_and_map(np, 0);
 dma_irq = irq_of_parse_and_map(np, 1);

 if (!regular_irq || !dma_irq) {
  dev_err(&pdev->dev, "Getting IRQs failed!\n");
  ret = -ENXIO;
  goto fail1;
 }

 mmc = mmc_alloc_host(sizeof(struct wmt_mci_priv), &pdev->dev);
 if (!mmc) {
  dev_err(&pdev->dev, "Failed to allocate mmc_host\n");
  ret = -ENOMEM;
  goto fail1;
 }

 mmc->ops = &wmt_mci_ops;
 mmc->f_min = wmt_caps->f_min;
 mmc->f_max = wmt_caps->f_max;
 mmc->ocr_avail = wmt_caps->ocr_avail;
 mmc->caps = wmt_caps->caps;

 mmc->max_seg_size = wmt_caps->max_seg_size;
 mmc->max_segs = wmt_caps->max_segs;
 mmc->max_blk_size = wmt_caps->max_blk_size;

 mmc->max_req_size = (16*512*mmc->max_segs);
 mmc->max_blk_count = mmc->max_req_size / 512;

 priv = mmc_priv(mmc);
 priv->mmc = mmc;
 priv->dev = &pdev->dev;

 priv->power_inverted = 0;
 priv->cd_inverted = 0;

 if (of_get_property(np, "sdon-inverted", ((void*)0)))
  priv->power_inverted = 1;
 if (of_get_property(np, "cd-inverted", ((void*)0)))
  priv->cd_inverted = 1;

 priv->sdmmc_base = of_iomap(np, 0);
 if (!priv->sdmmc_base) {
  dev_err(&pdev->dev, "Failed to map IO space\n");
  ret = -ENOMEM;
  goto fail2;
 }

 priv->irq_regular = regular_irq;
 priv->irq_dma = dma_irq;

 ret = request_irq(regular_irq, wmt_mci_regular_isr, 0, "sdmmc", priv);
 if (ret) {
  dev_err(&pdev->dev, "Register regular IRQ fail\n");
  goto fail3;
 }

 ret = request_irq(dma_irq, wmt_mci_dma_isr, 0, "sdmmc", priv);
 if (ret) {
  dev_err(&pdev->dev, "Register DMA IRQ fail\n");
  goto fail4;
 }


 priv->dma_desc_buffer = dma_alloc_coherent(&pdev->dev,
         mmc->max_blk_count * 16,
         &priv->dma_desc_device_addr,
         GFP_KERNEL);
 if (!priv->dma_desc_buffer) {
  dev_err(&pdev->dev, "DMA alloc fail\n");
  ret = -EPERM;
  goto fail5;
 }

 platform_set_drvdata(pdev, mmc);

 priv->clk_sdmmc = of_clk_get(np, 0);
 if (IS_ERR(priv->clk_sdmmc)) {
  dev_err(&pdev->dev, "Error getting clock\n");
  ret = PTR_ERR(priv->clk_sdmmc);
  goto fail5;
 }

 ret = clk_prepare_enable(priv->clk_sdmmc);
 if (ret)
  goto fail6;


 wmt_reset_hardware(mmc);

 mmc_add_host(mmc);

 dev_info(&pdev->dev, "WMT SDHC Controller initialized\n");

 return 0;
fail6:
 clk_put(priv->clk_sdmmc);
fail5:
 free_irq(dma_irq, priv);
fail4:
 free_irq(regular_irq, priv);
fail3:
 iounmap(priv->sdmmc_base);
fail2:
 mmc_free_host(mmc);
fail1:
 return ret;
}

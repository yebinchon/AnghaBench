
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct mmc_host {int f_max; int f_min; int ocr_avail; int max_blk_size; int max_blk_count; int max_req_size; int max_segs; int max_seg_size; int caps; int * ops; } ;
struct jz4740_mmc_host {int version; int irq; int use_dma; int timeout_timer; int irq_mask; int lock; struct platform_device* pdev; struct mmc_host* mmc; int base; int mem_res; int clk; } ;
typedef enum jz4740_mmc_version { ____Placeholder_jz4740_mmc_version } jz4740_mmc_version ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int JZ_MMC_CLK_RATE ;
 int JZ_MMC_JZ4740 ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_VDD_32_33 ;
 int MMC_VDD_33_34 ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,...) ;
 int dev_name (int *) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_resource (int *,int ) ;
 int free_irq (int,struct jz4740_mmc_host*) ;
 int jz4740_mmc_acquire_dma_channels (struct jz4740_mmc_host*) ;
 int jz4740_mmc_clock_disable (struct jz4740_mmc_host*) ;
 int jz4740_mmc_of_match ;
 int jz4740_mmc_ops ;
 int jz4740_mmc_release_dma_channels (struct jz4740_mmc_host*) ;
 int jz4740_mmc_reset (struct jz4740_mmc_host*) ;
 int jz4740_mmc_timeout ;
 int jz_mmc_irq ;
 int jz_mmc_irq_worker ;
 int mmc_add_host (struct mmc_host*) ;
 struct mmc_host* mmc_alloc_host (int,int *) ;
 int mmc_free_host (struct mmc_host*) ;
 int mmc_of_parse (struct mmc_host*) ;
 struct jz4740_mmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_get_supply (struct mmc_host*) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct jz4740_mmc_host*) ;
 int request_threaded_irq (int,int ,int ,int ,int ,struct jz4740_mmc_host*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int jz4740_mmc_probe(struct platform_device* pdev)
{
 int ret;
 struct mmc_host *mmc;
 struct jz4740_mmc_host *host;
 const struct of_device_id *match;

 mmc = mmc_alloc_host(sizeof(struct jz4740_mmc_host), &pdev->dev);
 if (!mmc) {
  dev_err(&pdev->dev, "Failed to alloc mmc host structure\n");
  return -ENOMEM;
 }

 host = mmc_priv(mmc);

 match = of_match_device(jz4740_mmc_of_match, &pdev->dev);
 if (match) {
  host->version = (enum jz4740_mmc_version)match->data;
 } else {

  host->version = JZ_MMC_JZ4740;
 }

 ret = mmc_of_parse(mmc);
 if (ret) {
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev,
    "could not parse device properties: %d\n", ret);
  goto err_free_host;
 }

 mmc_regulator_get_supply(mmc);

 host->irq = platform_get_irq(pdev, 0);
 if (host->irq < 0) {
  ret = host->irq;
  goto err_free_host;
 }

 host->clk = devm_clk_get(&pdev->dev, "mmc");
 if (IS_ERR(host->clk)) {
  ret = PTR_ERR(host->clk);
  dev_err(&pdev->dev, "Failed to get mmc clock\n");
  goto err_free_host;
 }

 host->mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 host->base = devm_ioremap_resource(&pdev->dev, host->mem_res);
 if (IS_ERR(host->base)) {
  ret = PTR_ERR(host->base);
  dev_err(&pdev->dev, "Failed to ioremap base memory\n");
  goto err_free_host;
 }

 mmc->ops = &jz4740_mmc_ops;
 if (!mmc->f_max)
  mmc->f_max = JZ_MMC_CLK_RATE;
 mmc->f_min = mmc->f_max / 128;
 mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;

 mmc->max_blk_size = (1 << 10) - 1;
 mmc->max_blk_count = (1 << 15) - 1;
 mmc->max_req_size = mmc->max_blk_size * mmc->max_blk_count;

 mmc->max_segs = 128;
 mmc->max_seg_size = mmc->max_req_size;

 host->mmc = mmc;
 host->pdev = pdev;
 spin_lock_init(&host->lock);
 host->irq_mask = ~0;

 jz4740_mmc_reset(host);

 ret = request_threaded_irq(host->irq, jz_mmc_irq, jz_mmc_irq_worker, 0,
   dev_name(&pdev->dev), host);
 if (ret) {
  dev_err(&pdev->dev, "Failed to request irq: %d\n", ret);
  goto err_free_host;
 }

 jz4740_mmc_clock_disable(host);
 timer_setup(&host->timeout_timer, jz4740_mmc_timeout, 0);

 ret = jz4740_mmc_acquire_dma_channels(host);
 if (ret == -EPROBE_DEFER)
  goto err_free_irq;
 host->use_dma = !ret;

 platform_set_drvdata(pdev, host);
 ret = mmc_add_host(mmc);

 if (ret) {
  dev_err(&pdev->dev, "Failed to add mmc host: %d\n", ret);
  goto err_release_dma;
 }
 dev_info(&pdev->dev, "JZ SD/MMC card driver registered\n");

 dev_info(&pdev->dev, "Using %s, %d-bit mode\n",
   host->use_dma ? "DMA" : "PIO",
   (mmc->caps & MMC_CAP_4_BIT_DATA) ? 4 : 1);

 return 0;

err_release_dma:
 if (host->use_dma)
  jz4740_mmc_release_dma_channels(host);
err_free_irq:
 free_irq(host->irq, host);
err_free_host:
 mmc_free_host(mmc);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device_id {int driver_data; } ;
struct TYPE_18__ {int of_node; struct imxmmc_platform_data* platform_data; } ;
struct platform_device {TYPE_4__ dev; TYPE_3__* id_entry; } ;
struct of_device_id {struct platform_device_id* data; } ;
struct TYPE_15__ {int dma_request; int priority; int peripheral_type; } ;
struct mxcmci_host {int default_irq_mask; int rev_no; void* clk_per; void* clk_ipg; TYPE_7__* dma; int watchdog; struct mmc_host* mmc; struct imxmmc_platform_data* pdata; int datawork; int dmareq; TYPE_1__ dma_data; int lock; int devtype; int phys_base; void* base; } ;
struct mmc_host {int caps; int max_blk_size; int max_blk_count; int max_req_size; int max_seg_size; int max_segs; int ocr_avail; int f_min; int f_max; int * ops; } ;
struct imxmmc_platform_data {int dat3_card_detect; int ocr_avail; int (* init ) (TYPE_4__*,int ,struct mmc_host*) ;} ;
typedef int dma_cap_mask_t ;
struct TYPE_19__ {TYPE_2__* device; } ;
struct TYPE_17__ {int driver_data; } ;
struct TYPE_16__ {int dev; } ;


 int DMA_PRIO_LOW ;
 int DMA_SLAVE ;
 int ENODEV ;
 int ENOMEM ;
 int IMX_DMATYPE_SDHC ;
 int INIT_WORK (int *,int ) ;
 int INT_CARD_INSERTION_EN ;
 int INT_CARD_REMOVAL_EN ;
 int IORESOURCE_DMA ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_SDIO_IRQ ;
 int MMC_REG_INT_CNTR ;
 int MMC_REG_READ_TO ;
 int MMC_REG_REV_NO ;
 int MMC_VDD_32_33 ;
 int MMC_VDD_33_34 ;
 int PTR_ERR (void*) ;
 int clk_disable_unprepare (void*) ;
 int clk_get_rate (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int dev_name (TYPE_4__*) ;
 void* devm_clk_get (TYPE_4__*,char*) ;
 void* devm_ioremap_resource (TYPE_4__*,struct resource*) ;
 int devm_request_irq (TYPE_4__*,int,int ,int ,int ,struct mxcmci_host*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_get_max_seg_size (int ) ;
 int dma_release_channel (TYPE_7__*) ;
 TYPE_7__* dma_request_channel (int ,int ,struct mxcmci_host*) ;
 TYPE_7__* dma_request_slave_channel (TYPE_4__*,char*) ;
 int filter ;
 int is_mpc512x_mmc (struct mxcmci_host*) ;
 int mmc_add_host (struct mmc_host*) ;
 struct mmc_host* mmc_alloc_host (int,TYPE_4__*) ;
 scalar_t__ mmc_card_is_removable (struct mmc_host*) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_free_host (struct mmc_host*) ;
 int mmc_of_parse (struct mmc_host*) ;
 struct mxcmci_host* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_get_supply (struct mmc_host*) ;
 int mxcmci_datawork ;
 int mxcmci_detect_irq ;
 int mxcmci_irq ;
 int mxcmci_of_match ;
 int mxcmci_ops ;
 int mxcmci_readw (struct mxcmci_host*,int ) ;
 int mxcmci_softreset (struct mxcmci_host*) ;
 int mxcmci_watchdog ;
 int mxcmci_writel (struct mxcmci_host*,int,int ) ;
 int mxcmci_writew (struct mxcmci_host*,int,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_4__*) ;
 int of_property_read_bool (int ,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mmc_host*) ;
 int pr_info (char*) ;
 int spin_lock_init (int *) ;
 int stub1 (TYPE_4__*,int ,struct mmc_host*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int mxcmci_probe(struct platform_device *pdev)
{
 struct mmc_host *mmc;
 struct mxcmci_host *host;
 struct resource *res;
 int ret = 0, irq;
 bool dat3_card_detect = 0;
 dma_cap_mask_t mask;
 const struct of_device_id *of_id;
 struct imxmmc_platform_data *pdata = pdev->dev.platform_data;

 pr_info("i.MX/MPC512x SDHC driver\n");

 of_id = of_match_device(mxcmci_of_match, &pdev->dev);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 mmc = mmc_alloc_host(sizeof(*host), &pdev->dev);
 if (!mmc)
  return -ENOMEM;

 host = mmc_priv(mmc);

 host->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(host->base)) {
  ret = PTR_ERR(host->base);
  goto out_free;
 }

 host->phys_base = res->start;

 ret = mmc_of_parse(mmc);
 if (ret)
  goto out_free;
 mmc->ops = &mxcmci_ops;


 if (pdata)
  mmc->caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SDIO_IRQ;
 else
  mmc->caps |= MMC_CAP_SDIO_IRQ;


 mmc->max_blk_size = 2048;
 mmc->max_blk_count = 65535;
 mmc->max_req_size = mmc->max_blk_size * mmc->max_blk_count;
 mmc->max_seg_size = mmc->max_req_size;

 if (of_id) {
  const struct platform_device_id *id_entry = of_id->data;
  host->devtype = id_entry->driver_data;
 } else {
  host->devtype = pdev->id_entry->driver_data;
 }


 if (!is_mpc512x_mmc(host))
  mmc->max_segs = 64;

 host->mmc = mmc;
 host->pdata = pdata;
 spin_lock_init(&host->lock);

 if (pdata)
  dat3_card_detect = pdata->dat3_card_detect;
 else if (mmc_card_is_removable(mmc)
   && !of_property_read_bool(pdev->dev.of_node, "cd-gpios"))
  dat3_card_detect = 1;

 ret = mmc_regulator_get_supply(mmc);
 if (ret)
  goto out_free;

 if (!mmc->ocr_avail) {
  if (pdata && pdata->ocr_avail)
   mmc->ocr_avail = pdata->ocr_avail;
  else
   mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;
 }

 if (dat3_card_detect)
  host->default_irq_mask =
   INT_CARD_INSERTION_EN | INT_CARD_REMOVAL_EN;
 else
  host->default_irq_mask = 0;

 host->clk_ipg = devm_clk_get(&pdev->dev, "ipg");
 if (IS_ERR(host->clk_ipg)) {
  ret = PTR_ERR(host->clk_ipg);
  goto out_free;
 }

 host->clk_per = devm_clk_get(&pdev->dev, "per");
 if (IS_ERR(host->clk_per)) {
  ret = PTR_ERR(host->clk_per);
  goto out_free;
 }

 ret = clk_prepare_enable(host->clk_per);
 if (ret)
  goto out_free;

 ret = clk_prepare_enable(host->clk_ipg);
 if (ret)
  goto out_clk_per_put;

 mxcmci_softreset(host);

 host->rev_no = mxcmci_readw(host, MMC_REG_REV_NO);
 if (host->rev_no != 0x400) {
  ret = -ENODEV;
  dev_err(mmc_dev(host->mmc), "wrong rev.no. 0x%08x. aborting.\n",
   host->rev_no);
  goto out_clk_put;
 }

 mmc->f_min = clk_get_rate(host->clk_per) >> 16;
 mmc->f_max = clk_get_rate(host->clk_per) >> 1;


 mxcmci_writew(host, 0x2db4, MMC_REG_READ_TO);

 mxcmci_writel(host, host->default_irq_mask, MMC_REG_INT_CNTR);

 if (!host->pdata) {
  host->dma = dma_request_slave_channel(&pdev->dev, "rx-tx");
 } else {
  res = platform_get_resource(pdev, IORESOURCE_DMA, 0);
  if (res) {
   host->dmareq = res->start;
   host->dma_data.peripheral_type = IMX_DMATYPE_SDHC;
   host->dma_data.priority = DMA_PRIO_LOW;
   host->dma_data.dma_request = host->dmareq;
   dma_cap_zero(mask);
   dma_cap_set(DMA_SLAVE, mask);
   host->dma = dma_request_channel(mask, filter, host);
  }
 }
 if (host->dma)
  mmc->max_seg_size = dma_get_max_seg_size(
    host->dma->device->dev);
 else
  dev_info(mmc_dev(host->mmc), "dma not available. Using PIO\n");

 INIT_WORK(&host->datawork, mxcmci_datawork);

 ret = devm_request_irq(&pdev->dev, irq, mxcmci_irq, 0,
          dev_name(&pdev->dev), host);
 if (ret)
  goto out_free_dma;

 platform_set_drvdata(pdev, mmc);

 if (host->pdata && host->pdata->init) {
  ret = host->pdata->init(&pdev->dev, mxcmci_detect_irq,
    host->mmc);
  if (ret)
   goto out_free_dma;
 }

 timer_setup(&host->watchdog, mxcmci_watchdog, 0);

 mmc_add_host(mmc);

 return 0;

out_free_dma:
 if (host->dma)
  dma_release_channel(host->dma);

out_clk_put:
 clk_disable_unprepare(host->clk_ipg);
out_clk_per_put:
 clk_disable_unprepare(host->clk_per);

out_free:
 mmc_free_host(mmc);

 return ret;
}

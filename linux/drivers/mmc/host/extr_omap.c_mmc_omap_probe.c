
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_11__ {struct omap_mmc_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; int id; } ;
struct omap_mmc_platform_data {int nr_slots; int (* init ) (TYPE_2__*) ;int (* cleanup ) (TYPE_2__*) ;TYPE_1__* slots; } ;
struct mmc_omap_host {int irq; int dma_tx_burst; int dma_rx_burst; int nr_slots; int reg_shift; int * iclk; int * fclk; int * dma_rx; int * dma_tx; int mmc_omap_wq; int * slots; TYPE_2__* dev; int phys_base; int id; struct omap_mmc_platform_data* pdata; int features; int slot_wq; int slot_lock; int dma_lock; int clk_timer; int clk_lock; int cmd_abort_timer; int cmd_abort_work; int send_stop_work; int slot_release_work; int * virt_base; } ;
struct TYPE_10__ {int features; } ;


 int DRIVER_NAME ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int alloc_workqueue (char*,int ,int ) ;
 int clk_disable (int *) ;
 int clk_enable (int *) ;
 void* clk_get (TYPE_2__*,char*) ;
 int clk_put (int *) ;
 int destroy_workqueue (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_warn (TYPE_2__*,char*) ;
 int * devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct mmc_omap_host* devm_kzalloc (TYPE_2__*,int,int ) ;
 int dma_release_channel (int *) ;
 void* dma_request_chan (TYPE_2__*,char*) ;
 int free_irq (int,struct mmc_omap_host*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ mmc_omap7xx () ;
 int mmc_omap_abort_command ;
 int mmc_omap_clk_timer ;
 int mmc_omap_cmd_timer ;
 int mmc_omap_irq ;
 int mmc_omap_new_slot (struct mmc_omap_host*,int) ;
 int mmc_omap_remove_slot (int ) ;
 int mmc_omap_send_stop_work ;
 int mmc_omap_slot_release_work ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mmc_omap_host*) ;
 int request_irq (int,int ,int ,int ,struct mmc_omap_host*) ;
 int spin_lock_init (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int mmc_omap_probe(struct platform_device *pdev)
{
 struct omap_mmc_platform_data *pdata = pdev->dev.platform_data;
 struct mmc_omap_host *host = ((void*)0);
 struct resource *res;
 int i, ret = 0;
 int irq;

 if (pdata == ((void*)0)) {
  dev_err(&pdev->dev, "platform data missing\n");
  return -ENXIO;
 }
 if (pdata->nr_slots == 0) {
  dev_err(&pdev->dev, "no slots\n");
  return -EPROBE_DEFER;
 }

 host = devm_kzalloc(&pdev->dev, sizeof(struct mmc_omap_host),
       GFP_KERNEL);
 if (host == ((void*)0))
  return -ENOMEM;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return -ENXIO;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 host->virt_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(host->virt_base))
  return PTR_ERR(host->virt_base);

 INIT_WORK(&host->slot_release_work, mmc_omap_slot_release_work);
 INIT_WORK(&host->send_stop_work, mmc_omap_send_stop_work);

 INIT_WORK(&host->cmd_abort_work, mmc_omap_abort_command);
 timer_setup(&host->cmd_abort_timer, mmc_omap_cmd_timer, 0);

 spin_lock_init(&host->clk_lock);
 timer_setup(&host->clk_timer, mmc_omap_clk_timer, 0);

 spin_lock_init(&host->dma_lock);
 spin_lock_init(&host->slot_lock);
 init_waitqueue_head(&host->slot_wq);

 host->pdata = pdata;
 host->features = host->pdata->slots[0].features;
 host->dev = &pdev->dev;
 platform_set_drvdata(pdev, host);

 host->id = pdev->id;
 host->irq = irq;
 host->phys_base = res->start;
 host->iclk = clk_get(&pdev->dev, "ick");
 if (IS_ERR(host->iclk))
  return PTR_ERR(host->iclk);
 clk_enable(host->iclk);

 host->fclk = clk_get(&pdev->dev, "fck");
 if (IS_ERR(host->fclk)) {
  ret = PTR_ERR(host->fclk);
  goto err_free_iclk;
 }

 host->dma_tx_burst = -1;
 host->dma_rx_burst = -1;

 host->dma_tx = dma_request_chan(&pdev->dev, "tx");
 if (IS_ERR(host->dma_tx)) {
  ret = PTR_ERR(host->dma_tx);
  if (ret == -EPROBE_DEFER) {
   clk_put(host->fclk);
   goto err_free_iclk;
  }

  host->dma_tx = ((void*)0);
  dev_warn(host->dev, "TX DMA channel request failed\n");
 }

 host->dma_rx = dma_request_chan(&pdev->dev, "rx");
 if (IS_ERR(host->dma_rx)) {
  ret = PTR_ERR(host->dma_rx);
  if (ret == -EPROBE_DEFER) {
   if (host->dma_tx)
    dma_release_channel(host->dma_tx);
   clk_put(host->fclk);
   goto err_free_iclk;
  }

  host->dma_rx = ((void*)0);
  dev_warn(host->dev, "RX DMA channel request failed\n");
 }

 ret = request_irq(host->irq, mmc_omap_irq, 0, DRIVER_NAME, host);
 if (ret)
  goto err_free_dma;

 if (pdata->init != ((void*)0)) {
  ret = pdata->init(&pdev->dev);
  if (ret < 0)
   goto err_free_irq;
 }

 host->nr_slots = pdata->nr_slots;
 host->reg_shift = (mmc_omap7xx() ? 1 : 2);

 host->mmc_omap_wq = alloc_workqueue("mmc_omap", 0, 0);
 if (!host->mmc_omap_wq) {
  ret = -ENOMEM;
  goto err_plat_cleanup;
 }

 for (i = 0; i < pdata->nr_slots; i++) {
  ret = mmc_omap_new_slot(host, i);
  if (ret < 0) {
   while (--i >= 0)
    mmc_omap_remove_slot(host->slots[i]);

   goto err_destroy_wq;
  }
 }

 return 0;

err_destroy_wq:
 destroy_workqueue(host->mmc_omap_wq);
err_plat_cleanup:
 if (pdata->cleanup)
  pdata->cleanup(&pdev->dev);
err_free_irq:
 free_irq(host->irq, host);
err_free_dma:
 if (host->dma_tx)
  dma_release_channel(host->dma_tx);
 if (host->dma_rx)
  dma_release_channel(host->dma_rx);
 clk_put(host->fclk);
err_free_iclk:
 clk_disable(host->iclk);
 clk_put(host->iclk);
 return ret;
}

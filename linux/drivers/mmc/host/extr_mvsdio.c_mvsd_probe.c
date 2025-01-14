
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mvsd_host {int base_clock; int clk; int timer; int base; int lock; TYPE_1__* dev; struct mmc_host* mmc; } ;
struct mmc_host {int ocr_avail; int max_blk_size; int max_blk_count; int max_segs; int max_seg_size; int max_req_size; int caps; scalar_t__ f_max; int f_min; int * ops; } ;
struct mbus_dram_target_info {int dummy; } ;
struct device_node {int dummy; } ;


 int DIV_ROUND_UP (int,int ) ;
 int DRIVER_NAME ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int MMC_CAP_ERASE ;
 int MMC_CAP_NEEDS_POLL ;
 int MMC_VDD_32_33 ;
 int MMC_VDD_33_34 ;
 int MVSD_BASE_DIV_MAX ;
 scalar_t__ MVSD_CLOCKRATE_MAX ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int devm_clk_get (TYPE_1__*,int *) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 int devm_request_irq (TYPE_1__*,int,int ,int ,int ,struct mvsd_host*) ;
 scalar_t__ maxfreq ;
 int mmc_add_host (struct mmc_host*) ;
 struct mmc_host* mmc_alloc_host (int,TYPE_1__*) ;
 int mmc_free_host (struct mmc_host*) ;
 int mmc_of_parse (struct mmc_host*) ;
 struct mvsd_host* mmc_priv (struct mmc_host*) ;
 int mv_conf_mbus_windows (struct mvsd_host*,struct mbus_dram_target_info const*) ;
 struct mbus_dram_target_info* mv_mbus_dram_info () ;
 int mvsd_irq ;
 int mvsd_ops ;
 int mvsd_power_down (struct mvsd_host*) ;
 int mvsd_timeout_timer ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mmc_host*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int mvsd_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct mmc_host *mmc = ((void*)0);
 struct mvsd_host *host = ((void*)0);
 const struct mbus_dram_target_info *dram;
 struct resource *r;
 int ret, irq;

 if (!np) {
  dev_err(&pdev->dev, "no DT node\n");
  return -ENODEV;
 }
 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 irq = platform_get_irq(pdev, 0);
 if (!r || irq < 0)
  return -ENXIO;

 mmc = mmc_alloc_host(sizeof(struct mvsd_host), &pdev->dev);
 if (!mmc) {
  ret = -ENOMEM;
  goto out;
 }

 host = mmc_priv(mmc);
 host->mmc = mmc;
 host->dev = &pdev->dev;
 host->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(host->clk)) {
  dev_err(&pdev->dev, "no clock associated\n");
  ret = -EINVAL;
  goto out;
 }
 clk_prepare_enable(host->clk);

 mmc->ops = &mvsd_ops;

 mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;

 mmc->f_min = DIV_ROUND_UP(host->base_clock, MVSD_BASE_DIV_MAX);
 mmc->f_max = MVSD_CLOCKRATE_MAX;

 mmc->max_blk_size = 2048;
 mmc->max_blk_count = 65535;

 mmc->max_segs = 1;
 mmc->max_seg_size = mmc->max_blk_size * mmc->max_blk_count;
 mmc->max_req_size = mmc->max_blk_size * mmc->max_blk_count;

 host->base_clock = clk_get_rate(host->clk) / 2;
 ret = mmc_of_parse(mmc);
 if (ret < 0)
  goto out;
 if (maxfreq)
  mmc->f_max = maxfreq;

 mmc->caps |= MMC_CAP_ERASE;

 spin_lock_init(&host->lock);

 host->base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(host->base)) {
  ret = PTR_ERR(host->base);
  goto out;
 }


 dram = mv_mbus_dram_info();
 if (dram)
  mv_conf_mbus_windows(host, dram);

 mvsd_power_down(host);

 ret = devm_request_irq(&pdev->dev, irq, mvsd_irq, 0, DRIVER_NAME, host);
 if (ret) {
  dev_err(&pdev->dev, "cannot assign irq %d\n", irq);
  goto out;
 }

 timer_setup(&host->timer, mvsd_timeout_timer, 0);
 platform_set_drvdata(pdev, mmc);
 ret = mmc_add_host(mmc);
 if (ret)
  goto out;

 if (!(mmc->caps & MMC_CAP_NEEDS_POLL))
  dev_dbg(&pdev->dev, "using GPIO for card detection\n");
 else
  dev_dbg(&pdev->dev, "lacking card detect (fall back to polling)\n");

 return 0;

out:
 if (mmc) {
  if (!IS_ERR(host->clk))
   clk_disable_unprepare(host->clk);
  mmc_free_host(mmc);
 }

 return ret;
}

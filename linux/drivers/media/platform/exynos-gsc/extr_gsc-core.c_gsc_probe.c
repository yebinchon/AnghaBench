
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {int of_node; } ;
struct platform_device {int name; struct device dev; } ;
struct gsc_driverdata {int num_entities; int num_clocks; int* clk_names; int * variant; } ;
struct gsc_dev {int id; int num_clocks; int * clock; int v4l2_dev; int regs; int lock; int slock; int irq_queue; struct platform_device* pdev; int variant; } ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (struct device*,char*,size_t) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int devm_clk_get (struct device*,int) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct gsc_dev* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct gsc_dev*) ;
 int gsc_hw_set_sw_reset (struct gsc_dev*) ;
 int gsc_irq_handler ;
 int gsc_register_m2m_device (struct gsc_dev*) ;
 struct gsc_driverdata const gsc_v_100_drvdata ;
 int gsc_wait_reset (struct gsc_dev*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int of_alias_get_id (int ,char*) ;
 struct gsc_driverdata* of_device_get_match_data (struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct gsc_dev*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int spin_lock_init (int *) ;
 int v4l2_device_register (struct device*,int *) ;
 int v4l2_device_unregister (int *) ;
 int vb2_dma_contig_set_max_seg_size (struct device*,int ) ;

__attribute__((used)) static int gsc_probe(struct platform_device *pdev)
{
 struct gsc_dev *gsc;
 struct resource *res;
 struct device *dev = &pdev->dev;
 const struct gsc_driverdata *drv_data = of_device_get_match_data(dev);
 int ret;
 int i;

 gsc = devm_kzalloc(dev, sizeof(struct gsc_dev), GFP_KERNEL);
 if (!gsc)
  return -ENOMEM;

 ret = of_alias_get_id(pdev->dev.of_node, "gsc");
 if (ret < 0)
  return ret;

 if (drv_data == &gsc_v_100_drvdata)
  dev_info(dev, "compatible 'exynos5-gsc' is deprecated\n");

 gsc->id = ret;
 if (gsc->id >= drv_data->num_entities) {
  dev_err(dev, "Invalid platform device id: %d\n", gsc->id);
  return -EINVAL;
 }

 gsc->num_clocks = drv_data->num_clocks;
 gsc->variant = drv_data->variant[gsc->id];
 gsc->pdev = pdev;

 init_waitqueue_head(&gsc->irq_queue);
 spin_lock_init(&gsc->slock);
 mutex_init(&gsc->lock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 gsc->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(gsc->regs))
  return PTR_ERR(gsc->regs);

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res) {
  dev_err(dev, "failed to get IRQ resource\n");
  return -ENXIO;
 }

 for (i = 0; i < gsc->num_clocks; i++) {
  gsc->clock[i] = devm_clk_get(dev, drv_data->clk_names[i]);
  if (IS_ERR(gsc->clock[i])) {
   dev_err(dev, "failed to get clock: %s\n",
    drv_data->clk_names[i]);
   return PTR_ERR(gsc->clock[i]);
  }
 }

 for (i = 0; i < gsc->num_clocks; i++) {
  ret = clk_prepare_enable(gsc->clock[i]);
  if (ret) {
   dev_err(dev, "clock prepare failed for clock: %s\n",
    drv_data->clk_names[i]);
   while (--i >= 0)
    clk_disable_unprepare(gsc->clock[i]);
   return ret;
  }
 }

 ret = devm_request_irq(dev, res->start, gsc_irq_handler,
    0, pdev->name, gsc);
 if (ret) {
  dev_err(dev, "failed to install irq (%d)\n", ret);
  goto err_clk;
 }

 ret = v4l2_device_register(dev, &gsc->v4l2_dev);
 if (ret)
  goto err_clk;

 ret = gsc_register_m2m_device(gsc);
 if (ret)
  goto err_v4l2;

 platform_set_drvdata(pdev, gsc);

 gsc_hw_set_sw_reset(gsc);
 gsc_wait_reset(gsc);

 vb2_dma_contig_set_max_seg_size(dev, DMA_BIT_MASK(32));

 dev_dbg(dev, "gsc-%d registered successfully\n", gsc->id);

 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);

 return 0;

err_v4l2:
 v4l2_device_unregister(&gsc->v4l2_dev);
err_clk:
 for (i = gsc->num_clocks - 1; i >= 0; i--)
  clk_disable_unprepare(gsc->clock[i]);
 return ret;
}

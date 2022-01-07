
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct flite_drvdata {scalar_t__ num_instances; } ;
struct fimc_lite {scalar_t__ index; int clock; int regs; int lock; int slock; int irq_queue; struct platform_device* pdev; struct flite_drvdata* dd; } ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (struct device*,char*,scalar_t__) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct fimc_lite* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct fimc_lite*) ;
 int fimc_lite_clk_get (struct fimc_lite*) ;
 int fimc_lite_clk_put (struct fimc_lite*) ;
 int fimc_lite_create_capture_subdev (struct fimc_lite*) ;
 int fimc_lite_set_default_config (struct fimc_lite*) ;
 int fimc_lite_unregister_capture_subdev (struct fimc_lite*) ;
 int flite_irq_handler ;
 int flite_of_match ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 scalar_t__ of_alias_get_id (int,char*) ;
 struct of_device_id* of_match_node (int ,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct fimc_lite*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_enabled (struct device*) ;
 int spin_lock_init (int *) ;
 int vb2_dma_contig_set_max_seg_size (struct device*,int ) ;

__attribute__((used)) static int fimc_lite_probe(struct platform_device *pdev)
{
 struct flite_drvdata *drv_data = ((void*)0);
 struct device *dev = &pdev->dev;
 const struct of_device_id *of_id;
 struct fimc_lite *fimc;
 struct resource *res;
 int ret;

 if (!dev->of_node)
  return -ENODEV;

 fimc = devm_kzalloc(dev, sizeof(*fimc), GFP_KERNEL);
 if (!fimc)
  return -ENOMEM;

 of_id = of_match_node(flite_of_match, dev->of_node);
 if (of_id)
  drv_data = (struct flite_drvdata *)of_id->data;
 fimc->index = of_alias_get_id(dev->of_node, "fimc-lite");

 if (!drv_data || fimc->index >= drv_data->num_instances ||
      fimc->index < 0) {
  dev_err(dev, "Wrong %pOF node alias\n", dev->of_node);
  return -EINVAL;
 }

 fimc->dd = drv_data;
 fimc->pdev = pdev;

 init_waitqueue_head(&fimc->irq_queue);
 spin_lock_init(&fimc->slock);
 mutex_init(&fimc->lock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 fimc->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(fimc->regs))
  return PTR_ERR(fimc->regs);

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (res == ((void*)0)) {
  dev_err(dev, "Failed to get IRQ resource\n");
  return -ENXIO;
 }

 ret = fimc_lite_clk_get(fimc);
 if (ret)
  return ret;

 ret = devm_request_irq(dev, res->start, flite_irq_handler,
          0, dev_name(dev), fimc);
 if (ret) {
  dev_err(dev, "Failed to install irq (%d)\n", ret);
  goto err_clk_put;
 }


 ret = fimc_lite_create_capture_subdev(fimc);
 if (ret)
  goto err_clk_put;

 platform_set_drvdata(pdev, fimc);
 pm_runtime_enable(dev);

 if (!pm_runtime_enabled(dev)) {
  ret = clk_prepare_enable(fimc->clock);
  if (ret < 0)
   goto err_sd;
 }

 vb2_dma_contig_set_max_seg_size(dev, DMA_BIT_MASK(32));

 fimc_lite_set_default_config(fimc);

 dev_dbg(dev, "FIMC-LITE.%d registered successfully\n",
  fimc->index);
 return 0;

err_sd:
 fimc_lite_unregister_capture_subdev(fimc);
err_clk_put:
 fimc_lite_clk_put(fimc);
 return ret;
}

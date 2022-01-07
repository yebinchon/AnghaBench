
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct resource {int start; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {int id; struct device dev; } ;
struct fimc_dev {int id; int * clock; TYPE_1__* drv_data; int regs; int sysreg; int lock; int slock; int irq_queue; int variant; struct platform_device* pdev; } ;
struct TYPE_2__ {int num_entities; scalar_t__ lclk_frequency; int * variant; } ;


 size_t CLK_BUS ;
 size_t CLK_GATE ;
 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_set_rate (int ,scalar_t__) ;
 int dev_dbg (struct device*,char*,size_t) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct fimc_dev* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct fimc_dev*) ;
 int fimc_clk_get (struct fimc_dev*) ;
 int fimc_clk_put (struct fimc_dev*) ;
 TYPE_1__* fimc_get_drvdata (struct platform_device*) ;
 int fimc_get_sysreg_regmap (scalar_t__) ;
 int fimc_initialize_capture_subdev (struct fimc_dev*) ;
 int fimc_irq_handler ;
 int fimc_parse_dt (struct fimc_dev*,scalar_t__*) ;
 int fimc_unregister_capture_subdev (struct fimc_dev*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct fimc_dev*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_enabled (struct device*) ;
 int spin_lock_init (int *) ;
 int vb2_dma_contig_set_max_seg_size (struct device*,int ) ;

__attribute__((used)) static int fimc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 u32 lclk_freq = 0;
 struct fimc_dev *fimc;
 struct resource *res;
 int ret = 0;

 fimc = devm_kzalloc(dev, sizeof(*fimc), GFP_KERNEL);
 if (!fimc)
  return -ENOMEM;

 fimc->pdev = pdev;

 if (dev->of_node) {
  ret = fimc_parse_dt(fimc, &lclk_freq);
  if (ret < 0)
   return ret;
 } else {
  fimc->drv_data = fimc_get_drvdata(pdev);
  fimc->id = pdev->id;
 }
 if (!fimc->drv_data || fimc->id >= fimc->drv_data->num_entities ||
     fimc->id < 0) {
  dev_err(dev, "Invalid driver data or device id (%d)\n",
   fimc->id);
  return -EINVAL;
 }
 if (!dev->of_node)
  fimc->variant = fimc->drv_data->variant[fimc->id];

 init_waitqueue_head(&fimc->irq_queue);
 spin_lock_init(&fimc->slock);
 mutex_init(&fimc->lock);

 fimc->sysreg = fimc_get_sysreg_regmap(dev->of_node);
 if (IS_ERR(fimc->sysreg))
  return PTR_ERR(fimc->sysreg);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 fimc->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(fimc->regs))
  return PTR_ERR(fimc->regs);

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (res == ((void*)0)) {
  dev_err(dev, "Failed to get IRQ resource\n");
  return -ENXIO;
 }

 ret = fimc_clk_get(fimc);
 if (ret)
  return ret;

 if (lclk_freq == 0)
  lclk_freq = fimc->drv_data->lclk_frequency;

 ret = clk_set_rate(fimc->clock[CLK_BUS], lclk_freq);
 if (ret < 0)
  return ret;

 ret = clk_enable(fimc->clock[CLK_BUS]);
 if (ret < 0)
  return ret;

 ret = devm_request_irq(dev, res->start, fimc_irq_handler,
          0, dev_name(dev), fimc);
 if (ret < 0) {
  dev_err(dev, "failed to install irq (%d)\n", ret);
  goto err_sclk;
 }

 ret = fimc_initialize_capture_subdev(fimc);
 if (ret < 0)
  goto err_sclk;

 platform_set_drvdata(pdev, fimc);
 pm_runtime_enable(dev);

 if (!pm_runtime_enabled(dev)) {
  ret = clk_enable(fimc->clock[CLK_GATE]);
  if (ret < 0)
   goto err_sd;
 }

 vb2_dma_contig_set_max_seg_size(dev, DMA_BIT_MASK(32));

 dev_dbg(dev, "FIMC.%d registered successfully\n", fimc->id);
 return 0;

err_sd:
 fimc_unregister_capture_subdev(fimc);
err_sclk:
 clk_disable(fimc->clock[CLK_BUS]);
 fimc_clk_put(fimc);
 return ret;
}

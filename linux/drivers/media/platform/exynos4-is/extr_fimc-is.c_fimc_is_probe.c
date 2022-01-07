
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct platform_device* pdev; } ;
struct fimc_is {int pmu_regs; int irq; int regs; int lock; int slock; int irq_queue; TYPE_1__ isp; struct platform_device* pdev; } ;
struct device_node {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int FIMC_IS_FW_FILENAME ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct fimc_is* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_platform_populate (struct device*) ;
 int fimc_is_debugfs_create (struct fimc_is*) ;
 int fimc_is_debugfs_remove (struct fimc_is*) ;
 int fimc_is_get_clocks (struct fimc_is*) ;
 int fimc_is_irq_handler ;
 int fimc_is_put_clocks (struct fimc_is*) ;
 int fimc_is_register_subdevs (struct fimc_is*) ;
 int fimc_is_request_firmware (struct fimc_is*,int ) ;
 int fimc_is_runtime_resume (struct device*) ;
 int fimc_is_runtime_suspend (struct device*) ;
 int fimc_is_unregister_subdevs (struct fimc_is*) ;
 int free_irq (int ,struct fimc_is*) ;
 int init_waitqueue_head (int *) ;
 int iounmap (int ) ;
 int irq_of_parse_and_map (int ,int ) ;
 int mutex_init (int *) ;
 int of_address_to_resource (int ,int ,struct resource*) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_iomap (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;
 int platform_set_drvdata (struct platform_device*,struct fimc_is*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_enabled (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int request_irq (int ,int ,int ,int ,struct fimc_is*) ;
 int spin_lock_init (int *) ;
 int vb2_dma_contig_set_max_seg_size (struct device*,int ) ;

__attribute__((used)) static int fimc_is_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct fimc_is *is;
 struct resource res;
 struct device_node *node;
 int ret;

 is = devm_kzalloc(&pdev->dev, sizeof(*is), GFP_KERNEL);
 if (!is)
  return -ENOMEM;

 is->pdev = pdev;
 is->isp.pdev = pdev;

 init_waitqueue_head(&is->irq_queue);
 spin_lock_init(&is->slock);
 mutex_init(&is->lock);

 ret = of_address_to_resource(dev->of_node, 0, &res);
 if (ret < 0)
  return ret;

 is->regs = devm_ioremap_resource(dev, &res);
 if (IS_ERR(is->regs))
  return PTR_ERR(is->regs);

 node = of_get_child_by_name(dev->of_node, "pmu");
 if (!node)
  return -ENODEV;

 is->pmu_regs = of_iomap(node, 0);
 of_node_put(node);
 if (!is->pmu_regs)
  return -ENOMEM;

 is->irq = irq_of_parse_and_map(dev->of_node, 0);
 if (!is->irq) {
  dev_err(dev, "no irq found\n");
  ret = -EINVAL;
  goto err_iounmap;
 }

 ret = fimc_is_get_clocks(is);
 if (ret < 0)
  goto err_iounmap;

 platform_set_drvdata(pdev, is);

 ret = request_irq(is->irq, fimc_is_irq_handler, 0, dev_name(dev), is);
 if (ret < 0) {
  dev_err(dev, "irq request failed\n");
  goto err_clk;
 }
 pm_runtime_enable(dev);

 if (!pm_runtime_enabled(dev)) {
  ret = fimc_is_runtime_resume(dev);
  if (ret < 0)
   goto err_irq;
 }

 ret = pm_runtime_get_sync(dev);
 if (ret < 0)
  goto err_pm;

 vb2_dma_contig_set_max_seg_size(dev, DMA_BIT_MASK(32));

 ret = devm_of_platform_populate(dev);
 if (ret < 0)
  goto err_pm;





 ret = fimc_is_register_subdevs(is);
 if (ret < 0)
  goto err_pm;

 ret = fimc_is_debugfs_create(is);
 if (ret < 0)
  goto err_sd;

 ret = fimc_is_request_firmware(is, FIMC_IS_FW_FILENAME);
 if (ret < 0)
  goto err_dfs;

 pm_runtime_put_sync(dev);

 dev_dbg(dev, "FIMC-IS registered successfully\n");
 return 0;

err_dfs:
 fimc_is_debugfs_remove(is);
err_sd:
 fimc_is_unregister_subdevs(is);
err_pm:
 if (!pm_runtime_enabled(dev))
  fimc_is_runtime_suspend(dev);
err_irq:
 free_irq(is->irq, is);
err_clk:
 fimc_is_put_clocks(is);
err_iounmap:
 iounmap(is->pmu_regs);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct soc_device_attribute {TYPE_4__* data; } ;
struct rvin_dev {int alpha; TYPE_1__* group; int v4l2_dev; TYPE_4__* info; int ctrl_handler; int base; int * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_7__ {scalar_t__ use_mc; } ;
struct TYPE_6__ {int * v4l2_dev; } ;
struct TYPE_5__ {int lock; TYPE_2__ notifier; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct rvin_dev* devm_kzalloc (int *,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_4__* of_device_get_match_data (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rvin_dev*) ;
 int pm_runtime_enable (int *) ;
 int pm_suspend_ignore_children (int *,int) ;
 int r8a7795es1 ;
 int rvin_dma_register (struct rvin_dev*,int) ;
 int rvin_dma_unregister (struct rvin_dev*) ;
 int rvin_group_put (struct rvin_dev*) ;
 int rvin_mc_init (struct rvin_dev*) ;
 int rvin_parallel_init (struct rvin_dev*) ;
 struct soc_device_attribute* soc_device_match (int ) ;
 int v4l2_async_notifier_cleanup (TYPE_2__*) ;
 int v4l2_async_notifier_unregister (TYPE_2__*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int rcar_vin_probe(struct platform_device *pdev)
{
 const struct soc_device_attribute *attr;
 struct rvin_dev *vin;
 struct resource *mem;
 int irq, ret;

 vin = devm_kzalloc(&pdev->dev, sizeof(*vin), GFP_KERNEL);
 if (!vin)
  return -ENOMEM;

 vin->dev = &pdev->dev;
 vin->info = of_device_get_match_data(&pdev->dev);
 vin->alpha = 0xff;





 attr = soc_device_match(r8a7795es1);
 if (attr)
  vin->info = attr->data;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (mem == ((void*)0))
  return -EINVAL;

 vin->base = devm_ioremap_resource(vin->dev, mem);
 if (IS_ERR(vin->base))
  return PTR_ERR(vin->base);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 ret = rvin_dma_register(vin, irq);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, vin);

 if (vin->info->use_mc) {
  ret = rvin_mc_init(vin);
  if (ret)
   goto error_dma_unregister;
 }

 ret = rvin_parallel_init(vin);
 if (ret)
  goto error_group_unregister;

 pm_suspend_ignore_children(&pdev->dev, 1);
 pm_runtime_enable(&pdev->dev);

 return 0;

error_group_unregister:
 v4l2_ctrl_handler_free(&vin->ctrl_handler);

 if (vin->info->use_mc) {
  mutex_lock(&vin->group->lock);
  if (&vin->v4l2_dev == vin->group->notifier.v4l2_dev) {
   v4l2_async_notifier_unregister(&vin->group->notifier);
   v4l2_async_notifier_cleanup(&vin->group->notifier);
  }
  mutex_unlock(&vin->group->lock);
  rvin_group_put(vin);
 }

error_dma_unregister:
 rvin_dma_unregister(vin);

 return ret;
}

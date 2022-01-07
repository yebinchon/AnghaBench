
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {scalar_t__ platform_data; scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int * ops; int * v4l2_dev; } ;
struct ceu_device {int v4l2_dev; TYPE_1__ notifier; int irq_mask; int base; int mlock; int lock; int capture; struct device* dev; } ;
struct ceu_data {int irq_mask; } ;
struct TYPE_6__ {struct ceu_data* data; } ;


 int CONFIG_OF ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct ceu_data ceu_data_sh4 ;
 int ceu_irq ;
 int ceu_notify_ops ;
 int ceu_of_match ;
 int ceu_parse_dt (struct ceu_device*) ;
 int ceu_parse_platform_data (struct ceu_device*,scalar_t__) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ) ;
 int dev_name (struct device*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int devm_request_irq (struct device*,unsigned int,int ,int ,int ,struct ceu_device*) ;
 int kfree (struct ceu_device*) ;
 struct ceu_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 TYPE_4__* of_match_device (int ,struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ceu_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int spin_lock_init (int *) ;
 int v4l2_async_notifier_cleanup (TYPE_1__*) ;
 int v4l2_async_notifier_init (TYPE_1__*) ;
 int v4l2_async_notifier_register (int *,TYPE_1__*) ;
 int v4l2_device_register (struct device*,int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int ceu_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 const struct ceu_data *ceu_data;
 struct ceu_device *ceudev;
 struct resource *res;
 unsigned int irq;
 int num_subdevs;
 int ret;

 ceudev = kzalloc(sizeof(*ceudev), GFP_KERNEL);
 if (!ceudev)
  return -ENOMEM;

 platform_set_drvdata(pdev, ceudev);
 ceudev->dev = dev;

 INIT_LIST_HEAD(&ceudev->capture);
 spin_lock_init(&ceudev->lock);
 mutex_init(&ceudev->mlock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ceudev->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(ceudev->base)) {
  ret = PTR_ERR(ceudev->base);
  goto error_free_ceudev;
 }

 ret = platform_get_irq(pdev, 0);
 if (ret < 0)
  goto error_free_ceudev;
 irq = ret;

 ret = devm_request_irq(dev, irq, ceu_irq,
          0, dev_name(dev), ceudev);
 if (ret) {
  dev_err(&pdev->dev, "Unable to request CEU interrupt.\n");
  goto error_free_ceudev;
 }

 pm_runtime_enable(dev);

 ret = v4l2_device_register(dev, &ceudev->v4l2_dev);
 if (ret)
  goto error_pm_disable;

 v4l2_async_notifier_init(&ceudev->notifier);

 if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
  ceu_data = of_match_device(ceu_of_match, dev)->data;
  num_subdevs = ceu_parse_dt(ceudev);
 } else if (dev->platform_data) {

  ceu_data = &ceu_data_sh4;
  num_subdevs = ceu_parse_platform_data(ceudev,
            dev->platform_data);
 } else {
  num_subdevs = -EINVAL;
 }

 if (num_subdevs < 0) {
  ret = num_subdevs;
  goto error_v4l2_unregister;
 }
 ceudev->irq_mask = ceu_data->irq_mask;

 ceudev->notifier.v4l2_dev = &ceudev->v4l2_dev;
 ceudev->notifier.ops = &ceu_notify_ops;
 ret = v4l2_async_notifier_register(&ceudev->v4l2_dev,
        &ceudev->notifier);
 if (ret)
  goto error_cleanup;

 dev_info(dev, "Renesas Capture Engine Unit %s\n", dev_name(dev));

 return 0;

error_cleanup:
 v4l2_async_notifier_cleanup(&ceudev->notifier);
error_v4l2_unregister:
 v4l2_device_unregister(&ceudev->v4l2_dev);
error_pm_disable:
 pm_runtime_disable(dev);
error_free_ceudev:
 kfree(ceudev);

 return ret;
}

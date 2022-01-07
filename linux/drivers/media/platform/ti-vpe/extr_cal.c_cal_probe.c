
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_4__ {int name; } ;
struct cal_dev {struct cal_ctx** ctx; void** cc; void* cm; TYPE_2__* res; void* base; struct platform_device* pdev; TYPE_1__ v4l2_dev; } ;
struct cal_ctx {int v4l2_dev; int ctrl_handler; int notifier; } ;
struct TYPE_5__ {int end; int start; int name; } ;


 int CAL_MODULE_NAME ;
 int CAL_NUM_CONTEXT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* cal_create_instance (struct cal_dev*,int) ;
 int cal_dbg (int,struct cal_dev*,char*,int,...) ;
 int cal_err (struct cal_dev*,char*) ;
 int cal_get_hwinfo (struct cal_dev*) ;
 int cal_irq ;
 int cal_runtime_get (struct cal_dev*) ;
 int cal_runtime_put (struct cal_dev*) ;
 void* cc_create (struct cal_dev*,int) ;
 void* cm_create (struct cal_dev*) ;
 void* devm_ioremap_resource (int *,TYPE_2__*) ;
 struct cal_dev* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct cal_dev*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 TYPE_2__* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct cal_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int strscpy (int ,int ,int) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int cal_probe(struct platform_device *pdev)
{
 struct cal_dev *dev;
 struct cal_ctx *ctx;
 int ret;
 int irq;
 int i;

 dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;


 strscpy(dev->v4l2_dev.name, CAL_MODULE_NAME,
  sizeof(dev->v4l2_dev.name));


 dev->pdev = pdev;

 dev->res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
      "cal_top");
 dev->base = devm_ioremap_resource(&pdev->dev, dev->res);
 if (IS_ERR(dev->base))
  return PTR_ERR(dev->base);

 cal_dbg(1, dev, "ioresource %s at %pa - %pa\n",
  dev->res->name, &dev->res->start, &dev->res->end);

 irq = platform_get_irq(pdev, 0);
 cal_dbg(1, dev, "got irq# %d\n", irq);
 ret = devm_request_irq(&pdev->dev, irq, cal_irq, 0, CAL_MODULE_NAME,
          dev);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, dev);

 dev->cm = cm_create(dev);
 if (IS_ERR(dev->cm))
  return PTR_ERR(dev->cm);

 dev->cc[0] = cc_create(dev, 0);
 if (IS_ERR(dev->cc[0]))
  return PTR_ERR(dev->cc[0]);

 dev->cc[1] = cc_create(dev, 1);
 if (IS_ERR(dev->cc[1]))
  return PTR_ERR(dev->cc[1]);

 dev->ctx[0] = ((void*)0);
 dev->ctx[1] = ((void*)0);

 dev->ctx[0] = cal_create_instance(dev, 0);
 dev->ctx[1] = cal_create_instance(dev, 1);
 if (!dev->ctx[0] && !dev->ctx[1]) {
  cal_err(dev, "Neither port is configured, no point in staying up\n");
  return -ENODEV;
 }

 pm_runtime_enable(&pdev->dev);

 ret = cal_runtime_get(dev);
 if (ret)
  goto runtime_disable;


 cal_get_hwinfo(dev);

 cal_runtime_put(dev);

 return 0;

runtime_disable:
 pm_runtime_disable(&pdev->dev);
 for (i = 0; i < CAL_NUM_CONTEXT; i++) {
  ctx = dev->ctx[i];
  if (ctx) {
   v4l2_async_notifier_unregister(&ctx->notifier);
   v4l2_async_notifier_cleanup(&ctx->notifier);
   v4l2_ctrl_handler_free(&ctx->ctrl_handler);
   v4l2_device_unregister(&ctx->v4l2_dev);
  }
 }

 return ret;
}

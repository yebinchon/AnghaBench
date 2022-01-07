
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * ops; } ;
struct TYPE_4__ {int base_addr; } ;
struct vpfe_ccdc {TYPE_1__ ccdc_cfg; } ;
struct vpfe_device {int irq; TYPE_2__ notifier; int v4l2_dev; int sd; struct vpfe_config* cfg; int * pdev; struct vpfe_ccdc ccdc; } ;
struct vpfe_config {int asd; } ;
struct v4l2_subdev {int dummy; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int devm_kcalloc (int *,int ,int,int ) ;
 struct vpfe_device* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct vpfe_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct vpfe_device*) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int v4l2_async_notifier_cleanup (TYPE_2__*) ;
 int v4l2_async_notifier_register (int *,TYPE_2__*) ;
 int v4l2_device_register (int *,int *) ;
 int v4l2_device_unregister (int *) ;
 int vpfe_async_ops ;
 int vpfe_ccdc_config_defaults (struct vpfe_ccdc*) ;
 int vpfe_err (struct vpfe_device*,char*) ;
 struct vpfe_config* vpfe_get_pdata (struct vpfe_device*) ;
 int vpfe_isr ;

__attribute__((used)) static int vpfe_probe(struct platform_device *pdev)
{
 struct vpfe_config *vpfe_cfg;
 struct vpfe_device *vpfe;
 struct vpfe_ccdc *ccdc;
 struct resource *res;
 int ret;

 vpfe = devm_kzalloc(&pdev->dev, sizeof(*vpfe), GFP_KERNEL);
 if (!vpfe)
  return -ENOMEM;

 vpfe->pdev = &pdev->dev;

 vpfe_cfg = vpfe_get_pdata(vpfe);
 if (!vpfe_cfg) {
  dev_err(&pdev->dev, "No platform data\n");
  return -EINVAL;
 }

 vpfe->cfg = vpfe_cfg;
 ccdc = &vpfe->ccdc;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ccdc->ccdc_cfg.base_addr = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ccdc->ccdc_cfg.base_addr)) {
  ret = PTR_ERR(ccdc->ccdc_cfg.base_addr);
  goto probe_out_cleanup;
 }

 ret = platform_get_irq(pdev, 0);
 if (ret <= 0) {
  ret = -ENODEV;
  goto probe_out_cleanup;
 }
 vpfe->irq = ret;

 ret = devm_request_irq(vpfe->pdev, vpfe->irq, vpfe_isr, 0,
          "vpfe_capture0", vpfe);
 if (ret) {
  dev_err(&pdev->dev, "Unable to request interrupt\n");
  ret = -EINVAL;
  goto probe_out_cleanup;
 }

 ret = v4l2_device_register(&pdev->dev, &vpfe->v4l2_dev);
 if (ret) {
  vpfe_err(vpfe,
   "Unable to register v4l2 device.\n");
  goto probe_out_cleanup;
 }


 platform_set_drvdata(pdev, vpfe);

 pm_runtime_enable(&pdev->dev);


 pm_runtime_get_sync(&pdev->dev);

 vpfe_ccdc_config_defaults(ccdc);

 pm_runtime_put_sync(&pdev->dev);

 vpfe->sd = devm_kcalloc(&pdev->dev,
    ARRAY_SIZE(vpfe->cfg->asd),
    sizeof(struct v4l2_subdev *),
    GFP_KERNEL);
 if (!vpfe->sd) {
  ret = -ENOMEM;
  goto probe_out_v4l2_unregister;
 }

 vpfe->notifier.ops = &vpfe_async_ops;
 ret = v4l2_async_notifier_register(&vpfe->v4l2_dev, &vpfe->notifier);
 if (ret) {
  vpfe_err(vpfe, "Error registering async notifier\n");
  ret = -EINVAL;
  goto probe_out_v4l2_unregister;
 }

 return 0;

probe_out_v4l2_unregister:
 v4l2_device_unregister(&vpfe->v4l2_dev);
probe_out_cleanup:
 v4l2_async_notifier_cleanup(&vpfe->notifier);
 return ret;
}

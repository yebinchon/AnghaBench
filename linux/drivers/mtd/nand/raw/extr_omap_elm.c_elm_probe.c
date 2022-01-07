
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct elm_info {int list; int elm_completion; int elm_base; int * dev; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct elm_info* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct elm_info*) ;
 int elm_devices ;
 int elm_isr ;
 int init_completion (int *) ;
 int list_add (int *,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct elm_info*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 scalar_t__ pm_runtime_get_sync (int *) ;

__attribute__((used)) static int elm_probe(struct platform_device *pdev)
{
 int ret = 0;
 struct resource *res, *irq;
 struct elm_info *info;

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->dev = &pdev->dev;

 irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!irq) {
  dev_err(&pdev->dev, "no irq resource defined\n");
  return -ENODEV;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 info->elm_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(info->elm_base))
  return PTR_ERR(info->elm_base);

 ret = devm_request_irq(&pdev->dev, irq->start, elm_isr, 0,
   pdev->name, info);
 if (ret) {
  dev_err(&pdev->dev, "failure requesting %pr\n", irq);
  return ret;
 }

 pm_runtime_enable(&pdev->dev);
 if (pm_runtime_get_sync(&pdev->dev) < 0) {
  ret = -EINVAL;
  pm_runtime_disable(&pdev->dev);
  dev_err(&pdev->dev, "can't enable clock\n");
  return ret;
 }

 init_completion(&info->elm_completion);
 INIT_LIST_HEAD(&info->list);
 list_add(&info->list, &elm_devices);
 platform_set_drvdata(pdev, info);
 return ret;
}

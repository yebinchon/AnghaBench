
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct bcm2835_pm {void* asb; void* base; struct device* dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int bcm2835_pm_devs ;
 int bcm2835_power_devs ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct bcm2835_pm* devm_kzalloc (struct device*,int,int ) ;
 int devm_mfd_add_devices (struct device*,int,int ,int ,int *,int ,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct bcm2835_pm*) ;

__attribute__((used)) static int bcm2835_pm_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct device *dev = &pdev->dev;
 struct bcm2835_pm *pm;
 int ret;

 pm = devm_kzalloc(dev, sizeof(*pm), GFP_KERNEL);
 if (!pm)
  return -ENOMEM;
 platform_set_drvdata(pdev, pm);

 pm->dev = dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pm->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(pm->base))
  return PTR_ERR(pm->base);

 ret = devm_mfd_add_devices(dev, -1,
       bcm2835_pm_devs, ARRAY_SIZE(bcm2835_pm_devs),
       ((void*)0), 0, ((void*)0));
 if (ret)
  return ret;





 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (res) {
  pm->asb = devm_ioremap_resource(dev, res);
  if (IS_ERR(pm->asb))
   return PTR_ERR(pm->asb);

  ret = devm_mfd_add_devices(dev, -1,
        bcm2835_power_devs,
        ARRAY_SIZE(bcm2835_power_devs),
        ((void*)0), 0, ((void*)0));
  if (ret)
   return ret;
 }

 return 0;
}

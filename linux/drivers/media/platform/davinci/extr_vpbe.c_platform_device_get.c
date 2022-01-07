
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpbe_device {int venc_device; int osd_device; } ;
struct platform_device {int dev; int name; } ;
struct device {int dummy; } ;


 int dev_get_platdata (int *) ;
 int platform_get_drvdata (struct platform_device*) ;
 scalar_t__ strstr (int ,char*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int platform_device_get(struct device *dev, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct vpbe_device *vpbe_dev = data;

 if (strstr(pdev->name, "vpbe-osd"))
  vpbe_dev->osd_device = platform_get_drvdata(pdev);
 if (strstr(pdev->name, "vpbe-venc"))
  vpbe_dev->venc_device = dev_get_platdata(&pdev->dev);

 return 0;
}

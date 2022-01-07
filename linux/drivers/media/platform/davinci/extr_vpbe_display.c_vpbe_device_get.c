
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpbe_display {void* osd_device; void* vpbe_dev; } ;
struct platform_device {int name; } ;
struct device {int dummy; } ;


 void* platform_get_drvdata (struct platform_device*) ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ strstr (int ,char*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int vpbe_device_get(struct device *dev, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct vpbe_display *vpbe_disp = data;

 if (strcmp("vpbe_controller", pdev->name) == 0)
  vpbe_disp->vpbe_dev = platform_get_drvdata(pdev);

 if (strstr(pdev->name, "vpbe-osd"))
  vpbe_disp->osd_device = platform_get_drvdata(pdev);

 return 0;
}

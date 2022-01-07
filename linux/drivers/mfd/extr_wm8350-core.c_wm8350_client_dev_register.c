
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8350 {int dev; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int dev_err (int ,char*,char const*,...) ;
 int platform_device_add (struct platform_device*) ;
 struct platform_device* platform_device_alloc (char const*,int) ;
 int platform_device_put (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct wm8350*) ;

__attribute__((used)) static void wm8350_client_dev_register(struct wm8350 *wm8350,
           const char *name,
           struct platform_device **pdev)
{
 int ret;

 *pdev = platform_device_alloc(name, -1);
 if (*pdev == ((void*)0)) {
  dev_err(wm8350->dev, "Failed to allocate %s\n", name);
  return;
 }

 (*pdev)->dev.parent = wm8350->dev;
 platform_set_drvdata(*pdev, wm8350);
 ret = platform_device_add(*pdev);
 if (ret != 0) {
  dev_err(wm8350->dev, "Failed to register %s: %d\n", name, ret);
  platform_device_put(*pdev);
  *pdev = ((void*)0);
 }
}

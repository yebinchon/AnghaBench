
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcf50633 {int dev; } ;


 int dev_err (int ,char*,char const*,...) ;
 int platform_device_add (struct platform_device*) ;
 struct platform_device* platform_device_alloc (char const*,int) ;
 int platform_device_put (struct platform_device*) ;

__attribute__((used)) static void
pcf50633_client_dev_register(struct pcf50633 *pcf, const char *name,
      struct platform_device **pdev)
{
 int ret;

 *pdev = platform_device_alloc(name, -1);
 if (!*pdev) {
  dev_err(pcf->dev, "Failed to allocate %s\n", name);
  return;
 }

 (*pdev)->dev.parent = pcf->dev;

 ret = platform_device_add(*pdev);
 if (ret) {
  dev_err(pcf->dev, "Failed to register %s: %d\n", name, ret);
  platform_device_put(*pdev);
  *pdev = ((void*)0);
 }
}

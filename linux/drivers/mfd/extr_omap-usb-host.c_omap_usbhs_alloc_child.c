
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_2__ {struct device* parent; int * dma_mask; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int dev_err (struct device*,char*,...) ;
 int dma_set_coherent_mask (TYPE_1__*,int ) ;
 int platform_device_add (struct platform_device*) ;
 int platform_device_add_data (struct platform_device*,void*,size_t) ;
 int platform_device_add_resources (struct platform_device*,struct resource*,int) ;
 struct platform_device* platform_device_alloc (char const*,int ) ;
 int platform_device_put (struct platform_device*) ;
 int usbhs_dmamask ;

__attribute__((used)) static struct platform_device *omap_usbhs_alloc_child(const char *name,
   struct resource *res, int num_resources, void *pdata,
   size_t pdata_size, struct device *dev)
{
 struct platform_device *child;
 int ret;

 child = platform_device_alloc(name, 0);

 if (!child) {
  dev_err(dev, "platform_device_alloc %s failed\n", name);
  goto err_end;
 }

 ret = platform_device_add_resources(child, res, num_resources);
 if (ret) {
  dev_err(dev, "platform_device_add_resources failed\n");
  goto err_alloc;
 }

 ret = platform_device_add_data(child, pdata, pdata_size);
 if (ret) {
  dev_err(dev, "platform_device_add_data failed\n");
  goto err_alloc;
 }

 child->dev.dma_mask = &usbhs_dmamask;
 dma_set_coherent_mask(&child->dev, DMA_BIT_MASK(32));
 child->dev.parent = dev;

 ret = platform_device_add(child);
 if (ret) {
  dev_err(dev, "platform_device_add failed\n");
  goto err_alloc;
 }

 return child;

err_alloc:
 platform_device_put(child);

err_end:
 return ((void*)0);
}

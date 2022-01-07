
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiznet_platform_data {void* mac_addr; int link_gpio; } ;
struct w5100_ops {int dummy; } ;
struct w5100_mmio_priv {int dummy; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 int IORESOURCE_MEM ;
 scalar_t__ W5100_BUS_DIRECT_SIZE ;
 struct wiznet_platform_data* dev_get_platdata (int *) ;
 scalar_t__ is_valid_ether_addr (void*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 scalar_t__ resource_size (struct resource*) ;
 struct w5100_ops w5100_mmio_direct_ops ;
 struct w5100_ops w5100_mmio_indirect_ops ;
 int w5100_probe (int *,struct w5100_ops const*,int,void const*,int,int ) ;

__attribute__((used)) static int w5100_mmio_probe(struct platform_device *pdev)
{
 struct wiznet_platform_data *data = dev_get_platdata(&pdev->dev);
 const void *mac_addr = ((void*)0);
 struct resource *mem;
 const struct w5100_ops *ops;
 int irq;

 if (data && is_valid_ether_addr(data->mac_addr))
  mac_addr = data->mac_addr;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (resource_size(mem) < W5100_BUS_DIRECT_SIZE)
  ops = &w5100_mmio_indirect_ops;
 else
  ops = &w5100_mmio_direct_ops;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 return w5100_probe(&pdev->dev, ops, sizeof(struct w5100_mmio_priv),
      mac_addr, irq, data ? data->link_gpio : -EINVAL);
}

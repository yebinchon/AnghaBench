
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int atomic_notifier_chain_register (int *,int *) ;
 int base ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int panic_notifier_list ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pvpanic_panic_nb ;

__attribute__((used)) static int pvpanic_mmio_probe(struct platform_device *pdev)
{
 struct resource *mem;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!mem)
  return -EINVAL;

 base = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(base))
  return PTR_ERR(base);

 atomic_notifier_chain_register(&panic_notifier_list,
           &pvpanic_panic_nb);

 return 0;
}

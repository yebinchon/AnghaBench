
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vexpress_syscfg {int base; int funcs; TYPE_1__* dev; } ;
struct resource {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct vexpress_syscfg* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct device* vexpress_config_bridge_register (int ,int *,struct vexpress_syscfg*) ;
 int vexpress_syscfg_bridge_ops ;

__attribute__((used)) static int vexpress_syscfg_probe(struct platform_device *pdev)
{
 struct vexpress_syscfg *syscfg;
 struct resource *res;
 struct device *bridge;

 syscfg = devm_kzalloc(&pdev->dev, sizeof(*syscfg), GFP_KERNEL);
 if (!syscfg)
  return -ENOMEM;
 syscfg->dev = &pdev->dev;
 INIT_LIST_HEAD(&syscfg->funcs);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 syscfg->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(syscfg->base))
  return PTR_ERR(syscfg->base);


 bridge = vexpress_config_bridge_register(pdev->dev.parent,
   &vexpress_syscfg_bridge_ops, syscfg);

 return PTR_ERR_OR_ZERO(bridge);
}

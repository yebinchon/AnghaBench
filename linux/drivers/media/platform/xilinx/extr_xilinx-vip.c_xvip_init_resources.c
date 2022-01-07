
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_device {int clk; int dev; int iomem; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;


 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int devm_clk_get (int ,int *) ;
 int devm_ioremap_resource (int ,struct resource*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct platform_device* to_platform_device (int ) ;

int xvip_init_resources(struct xvip_device *xvip)
{
 struct platform_device *pdev = to_platform_device(xvip->dev);
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 xvip->iomem = devm_ioremap_resource(xvip->dev, res);
 if (IS_ERR(xvip->iomem))
  return PTR_ERR(xvip->iomem);

 xvip->clk = devm_clk_get(xvip->dev, ((void*)0));
 if (IS_ERR(xvip->clk))
  return PTR_ERR(xvip->clk);

 clk_prepare_enable(xvip->clk);
 return 0;
}

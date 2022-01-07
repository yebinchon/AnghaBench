
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ingenic_ecc {int clk; } ;
struct device_node {int dummy; } ;


 int EPROBE_DEFER ;
 struct ingenic_ecc* ERR_PTR (int ) ;
 int clk_prepare_enable (int ) ;
 int get_device (int *) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct ingenic_ecc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static struct ingenic_ecc *ingenic_ecc_get(struct device_node *np)
{
 struct platform_device *pdev;
 struct ingenic_ecc *ecc;

 pdev = of_find_device_by_node(np);
 if (!pdev || !platform_get_drvdata(pdev))
  return ERR_PTR(-EPROBE_DEFER);

 get_device(&pdev->dev);

 ecc = platform_get_drvdata(pdev);
 clk_prepare_enable(ecc->clk);

 return ecc;
}

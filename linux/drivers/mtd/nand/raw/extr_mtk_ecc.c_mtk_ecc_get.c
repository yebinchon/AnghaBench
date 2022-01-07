
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mtk_ecc {int clk; } ;
struct device_node {int dummy; } ;


 int EPROBE_DEFER ;
 struct mtk_ecc* ERR_PTR (int ) ;
 int clk_prepare_enable (int ) ;
 int mtk_ecc_hw_init (struct mtk_ecc*) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct mtk_ecc* platform_get_drvdata (struct platform_device*) ;
 int put_device (int *) ;

__attribute__((used)) static struct mtk_ecc *mtk_ecc_get(struct device_node *np)
{
 struct platform_device *pdev;
 struct mtk_ecc *ecc;

 pdev = of_find_device_by_node(np);
 if (!pdev)
  return ERR_PTR(-EPROBE_DEFER);

 ecc = platform_get_drvdata(pdev);
 if (!ecc) {
  put_device(&pdev->dev);
  return ERR_PTR(-EPROBE_DEFER);
 }

 clk_prepare_enable(ecc->clk);
 mtk_ecc_hw_init(ecc);

 return ecc;
}

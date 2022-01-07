
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_nor {int dummy; } ;


 int mtk_nor_disable_clk (struct mtk_nor*) ;
 struct mtk_nor* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_nor_drv_remove(struct platform_device *pdev)
{
 struct mtk_nor *mtk_nor = platform_get_drvdata(pdev);

 mtk_nor_disable_clk(mtk_nor);

 return 0;
}

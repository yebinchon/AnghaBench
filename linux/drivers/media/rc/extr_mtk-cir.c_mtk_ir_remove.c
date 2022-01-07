
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_ir {int clk; int bus; int irq; } ;


 int MTK_IRINT_EN ;
 int clk_disable_unprepare (int ) ;
 int mtk_irq_disable (struct mtk_ir*,int ) ;
 struct mtk_ir* platform_get_drvdata (struct platform_device*) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int mtk_ir_remove(struct platform_device *pdev)
{
 struct mtk_ir *ir = platform_get_drvdata(pdev);






 mtk_irq_disable(ir, MTK_IRINT_EN);
 synchronize_irq(ir->irq);

 clk_disable_unprepare(ir->bus);
 clk_disable_unprepare(ir->clk);

 return 0;
}

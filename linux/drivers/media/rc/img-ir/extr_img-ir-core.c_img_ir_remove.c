
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct img_ir_priv {int sys_clk; int clk; int irq; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int free_irq (int ,struct img_ir_priv*) ;
 int img_ir_remove_hw (struct img_ir_priv*) ;
 int img_ir_remove_raw (struct img_ir_priv*) ;
 struct img_ir_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int img_ir_remove(struct platform_device *pdev)
{
 struct img_ir_priv *priv = platform_get_drvdata(pdev);

 free_irq(priv->irq, priv);
 img_ir_remove_hw(priv);
 img_ir_remove_raw(priv);

 if (!IS_ERR(priv->clk))
  clk_disable_unprepare(priv->clk);
 if (!IS_ERR(priv->sys_clk))
  clk_disable_unprepare(priv->sys_clk);
 return 0;
}

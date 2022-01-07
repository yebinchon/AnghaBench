
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct hix5hd2_ir_priv {int rdev; int clock; } ;


 int clk_disable_unprepare (int ) ;
 struct hix5hd2_ir_priv* platform_get_drvdata (struct platform_device*) ;
 int rc_unregister_device (int ) ;

__attribute__((used)) static int hix5hd2_ir_remove(struct platform_device *pdev)
{
 struct hix5hd2_ir_priv *priv = platform_get_drvdata(pdev);

 clk_disable_unprepare(priv->clock);
 rc_unregister_device(priv->rdev);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tango_ir {int clk; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct tango_ir* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tango_ir_remove(struct platform_device *pdev)
{
 struct tango_ir *ir = platform_get_drvdata(pdev);

 clk_disable_unprepare(ir->clk);
 return 0;
}

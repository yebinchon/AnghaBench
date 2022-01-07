
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct oxnas_nand_ctrl {int clk; scalar_t__* chips; } ;


 int clk_disable_unprepare (int ) ;
 int nand_release (scalar_t__) ;
 struct oxnas_nand_ctrl* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int oxnas_nand_remove(struct platform_device *pdev)
{
 struct oxnas_nand_ctrl *oxnas = platform_get_drvdata(pdev);

 if (oxnas->chips[0])
  nand_release(oxnas->chips[0]);

 clk_disable_unprepare(oxnas->clk);

 return 0;
}

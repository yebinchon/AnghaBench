
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_nfc {int clk; int chip; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int nand_release (int *) ;
 struct vf610_nfc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int vf610_nfc_remove(struct platform_device *pdev)
{
 struct vf610_nfc *nfc = platform_get_drvdata(pdev);

 nand_release(&nfc->chip);
 clk_disable_unprepare(nfc->clk);
 return 0;
}

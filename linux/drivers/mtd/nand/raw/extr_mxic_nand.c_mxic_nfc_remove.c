
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mxic_nand_ctlr {int chip; } ;


 int mxic_nfc_clk_disable (struct mxic_nand_ctlr*) ;
 int nand_release (int *) ;
 struct mxic_nand_ctlr* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mxic_nfc_remove(struct platform_device *pdev)
{
 struct mxic_nand_ctlr *nfc = platform_get_drvdata(pdev);

 nand_release(&nfc->chip);
 mxic_nfc_clk_disable(nfc);
 return 0;
}

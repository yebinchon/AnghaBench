
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ingenic_nfc {scalar_t__ ecc; } ;


 int ingenic_ecc_release (scalar_t__) ;
 int ingenic_nand_cleanup_chips (struct ingenic_nfc*) ;
 struct ingenic_nfc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ingenic_nand_remove(struct platform_device *pdev)
{
 struct ingenic_nfc *nfc = platform_get_drvdata(pdev);

 if (nfc->ecc)
  ingenic_ecc_release(nfc->ecc);

 ingenic_nand_cleanup_chips(nfc);

 return 0;
}

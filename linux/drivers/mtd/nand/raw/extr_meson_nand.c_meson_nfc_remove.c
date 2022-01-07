
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct meson_nfc {int dummy; } ;


 int meson_nfc_disable_clk (struct meson_nfc*) ;
 int meson_nfc_nand_chip_cleanup (struct meson_nfc*) ;
 struct meson_nfc* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int meson_nfc_remove(struct platform_device *pdev)
{
 struct meson_nfc *nfc = platform_get_drvdata(pdev);
 int ret;

 ret = meson_nfc_nand_chip_cleanup(nfc);
 if (ret)
  return ret;

 meson_nfc_disable_clk(nfc);

 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}

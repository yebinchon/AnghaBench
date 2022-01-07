
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct gpiomtd {scalar_t__ nce; scalar_t__ nwp; int nand_chip; } ;


 int IS_ERR (scalar_t__) ;
 int gpiod_set_value (scalar_t__,int ) ;
 int nand_release (int *) ;
 struct gpiomtd* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int gpio_nand_remove(struct platform_device *pdev)
{
 struct gpiomtd *gpiomtd = platform_get_drvdata(pdev);

 nand_release(&gpiomtd->nand_chip);


 if (gpiomtd->nwp && !IS_ERR(gpiomtd->nwp))
  gpiod_set_value(gpiomtd->nwp, 0);
 if (gpiomtd->nce && !IS_ERR(gpiomtd->nce))
  gpiod_set_value(gpiomtd->nce, 0);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_snor_flash {int mtd; } ;
struct spear_smi {int num_flashes; int clk; struct spear_snor_flash** flash; } ;
struct platform_device {int dev; } ;


 int ENODEV ;
 int clk_disable_unprepare (int ) ;
 int dev_err (int *,char*) ;
 int mtd_device_unregister (int *) ;
 struct spear_smi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int spear_smi_remove(struct platform_device *pdev)
{
 struct spear_smi *dev;
 struct spear_snor_flash *flash;
 int ret, i;

 dev = platform_get_drvdata(pdev);
 if (!dev) {
  dev_err(&pdev->dev, "dev is null\n");
  return -ENODEV;
 }


 for (i = 0; i < dev->num_flashes; i++) {
  flash = dev->flash[i];
  if (!flash)
   continue;


  ret = mtd_device_unregister(&flash->mtd);
  if (ret)
   dev_err(&pdev->dev, "error removing mtd\n");
 }

 clk_disable_unprepare(dev->clk);

 return 0;
}

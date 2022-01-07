
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ndfc_controller {int chip; } ;
struct mtd_info {int name; } ;


 struct ndfc_controller* dev_get_drvdata (int *) ;
 int kfree (int ) ;
 int nand_release (int *) ;
 struct mtd_info* nand_to_mtd (int *) ;

__attribute__((used)) static int ndfc_remove(struct platform_device *ofdev)
{
 struct ndfc_controller *ndfc = dev_get_drvdata(&ofdev->dev);
 struct mtd_info *mtd = nand_to_mtd(&ndfc->chip);

 nand_release(&ndfc->chip);
 kfree(mtd->name);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mtd_info {int dummy; } ;


 struct mtd_info* dev_get_drvdata (struct device*) ;
 int mpc5121_nfc_free (struct device*,struct mtd_info*) ;
 int mtd_to_nand (struct mtd_info*) ;
 int nand_release (int ) ;

__attribute__((used)) static int mpc5121_nfc_remove(struct platform_device *op)
{
 struct device *dev = &op->dev;
 struct mtd_info *mtd = dev_get_drvdata(dev);

 nand_release(mtd_to_nand(mtd));
 mpc5121_nfc_free(dev, mtd);

 return 0;
}

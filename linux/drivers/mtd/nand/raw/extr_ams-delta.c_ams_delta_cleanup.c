
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtd_info {int dummy; } ;
struct ams_delta_nand {int nand_chip; } ;


 int mtd_to_nand (struct mtd_info*) ;
 int nand_release (int ) ;
 struct mtd_info* nand_to_mtd (int *) ;
 struct ams_delta_nand* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ams_delta_cleanup(struct platform_device *pdev)
{
 struct ams_delta_nand *priv = platform_get_drvdata(pdev);
 struct mtd_info *mtd = nand_to_mtd(&priv->nand_chip);


 nand_release(mtd_to_nand(mtd));

 return 0;
}

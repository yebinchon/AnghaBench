
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtd_info {int dummy; } ;


 int onenand_release (struct mtd_info*) ;
 struct mtd_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int s3c_onenand_remove(struct platform_device *pdev)
{
 struct mtd_info *mtd = platform_get_drvdata(pdev);

 onenand_release(mtd);

 return 0;
}

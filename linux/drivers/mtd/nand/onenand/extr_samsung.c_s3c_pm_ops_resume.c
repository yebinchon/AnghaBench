
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int (* unlock_all ) (struct mtd_info*) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;
struct device {int dummy; } ;


 struct mtd_info* dev_get_drvdata (struct device*) ;
 int stub1 (struct mtd_info*) ;

__attribute__((used)) static int s3c_pm_ops_resume(struct device *dev)
{
 struct mtd_info *mtd = dev_get_drvdata(dev);
 struct onenand_chip *this = mtd->priv;

 this->unlock_all(mtd);
 return 0;
}

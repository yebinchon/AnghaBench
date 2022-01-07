
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spinand_device {int lock; } ;
struct mtd_info {int dummy; } ;
struct erase_info {int dummy; } ;


 struct spinand_device* mtd_to_spinand (struct mtd_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nanddev_mtd_erase (struct mtd_info*,struct erase_info*) ;

__attribute__((used)) static int spinand_mtd_erase(struct mtd_info *mtd,
        struct erase_info *einfo)
{
 struct spinand_device *spinand = mtd_to_spinand(mtd);
 int ret;

 mutex_lock(&spinand->lock);
 ret = nanddev_mtd_erase(mtd, einfo);
 mutex_unlock(&spinand->lock);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {scalar_t__ usecount; int owner; int (* _put_device ) (struct mtd_info*) ;} ;


 int BUG_ON (int) ;
 int module_put (int ) ;
 int stub1 (struct mtd_info*) ;

void __put_mtd_device(struct mtd_info *mtd)
{
 --mtd->usecount;
 BUG_ON(mtd->usecount < 0);

 if (mtd->_put_device)
  mtd->_put_device(mtd);

 module_put(mtd->owner);
}

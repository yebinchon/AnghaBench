
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 unsigned long ENOSYS ;
 int mtd_point (struct mtd_info*,unsigned long,unsigned long,size_t*,void**,int *) ;
 int mtd_unpoint (struct mtd_info*,unsigned long,size_t) ;

unsigned long mtd_get_unmapped_area(struct mtd_info *mtd, unsigned long len,
        unsigned long offset, unsigned long flags)
{
 size_t retlen;
 void *virt;
 int ret;

 ret = mtd_point(mtd, offset, len, &retlen, &virt, ((void*)0));
 if (ret)
  return ret;
 if (retlen != len) {
  mtd_unpoint(mtd, offset, retlen);
  return -ENOSYS;
 }
 return (unsigned long)virt;
}

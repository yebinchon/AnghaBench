
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {scalar_t__ size; int (* _block_isbad ) (struct mtd_info*,scalar_t__) ;} ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int stub1 (struct mtd_info*,scalar_t__) ;

int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs)
{
 if (ofs < 0 || ofs >= mtd->size)
  return -EINVAL;
 if (!mtd->_block_isbad)
  return 0;
 return mtd->_block_isbad(mtd, ofs);
}

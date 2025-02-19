
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int (* _block_markbad ) (struct mtd_info*,scalar_t__) ;scalar_t__ size; int flags; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EROFS ;
 int MTD_WRITEABLE ;
 int stub1 (struct mtd_info*,scalar_t__) ;

int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs)
{
 if (!mtd->_block_markbad)
  return -EOPNOTSUPP;
 if (ofs < 0 || ofs >= mtd->size)
  return -EINVAL;
 if (!(mtd->flags & MTD_WRITEABLE))
  return -EROFS;
 return mtd->_block_markbad(mtd, ofs);
}

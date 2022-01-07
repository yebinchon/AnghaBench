
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct mtd_info {int (* _unlock ) (struct mtd_info*,scalar_t__,scalar_t__) ;scalar_t__ size; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int stub1 (struct mtd_info*,scalar_t__,scalar_t__) ;

int mtd_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
{
 if (!mtd->_unlock)
  return -EOPNOTSUPP;
 if (ofs < 0 || ofs >= mtd->size || len > mtd->size - ofs)
  return -EINVAL;
 if (!len)
  return 0;
 return mtd->_unlock(mtd, ofs, len);
}

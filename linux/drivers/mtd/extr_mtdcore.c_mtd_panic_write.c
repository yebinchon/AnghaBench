
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int (* _panic_write ) (struct mtd_info*,scalar_t__,size_t,size_t*,int const*) ;scalar_t__ size; int flags; int oops_panic_write; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EROFS ;
 int MTD_WRITEABLE ;
 int stub1 (struct mtd_info*,scalar_t__,size_t,size_t*,int const*) ;

int mtd_panic_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
      const u_char *buf)
{
 *retlen = 0;
 if (!mtd->_panic_write)
  return -EOPNOTSUPP;
 if (to < 0 || to >= mtd->size || len > mtd->size - to)
  return -EINVAL;
 if (!(mtd->flags & MTD_WRITEABLE))
  return -EROFS;
 if (!len)
  return 0;
 if (!mtd->oops_panic_write)
  mtd->oops_panic_write = 1;

 return mtd->_panic_write(mtd, to, len, retlen, buf);
}

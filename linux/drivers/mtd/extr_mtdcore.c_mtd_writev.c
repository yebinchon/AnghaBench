
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int flags; int (* _writev ) (struct mtd_info*,struct kvec const*,unsigned long,int ,size_t*) ;} ;
struct kvec {int dummy; } ;
typedef int loff_t ;


 int EROFS ;
 int MTD_WRITEABLE ;
 int default_mtd_writev (struct mtd_info*,struct kvec const*,unsigned long,int ,size_t*) ;
 int stub1 (struct mtd_info*,struct kvec const*,unsigned long,int ,size_t*) ;

int mtd_writev(struct mtd_info *mtd, const struct kvec *vecs,
        unsigned long count, loff_t to, size_t *retlen)
{
 *retlen = 0;
 if (!(mtd->flags & MTD_WRITEABLE))
  return -EROFS;
 if (!mtd->_writev)
  return default_mtd_writev(mtd, vecs, count, to, retlen);
 return mtd->_writev(mtd, vecs, count, to, retlen);
}

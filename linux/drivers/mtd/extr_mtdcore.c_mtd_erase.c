
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int (* _erase ) (struct mtd_info*,struct erase_info*) ;scalar_t__ size; int flags; int erasesize; } ;
struct erase_info {scalar_t__ addr; scalar_t__ len; int fail_addr; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int EROFS ;
 int MTD_FAIL_ADDR_UNKNOWN ;
 int MTD_WRITEABLE ;
 int ledtrig_mtd_activity () ;
 int stub1 (struct mtd_info*,struct erase_info*) ;

int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 instr->fail_addr = MTD_FAIL_ADDR_UNKNOWN;

 if (!mtd->erasesize || !mtd->_erase)
  return -ENOTSUPP;

 if (instr->addr >= mtd->size || instr->len > mtd->size - instr->addr)
  return -EINVAL;
 if (!(mtd->flags & MTD_WRITEABLE))
  return -EROFS;

 if (!instr->len)
  return 0;

 ledtrig_mtd_activity();
 return mtd->_erase(mtd, instr);
}

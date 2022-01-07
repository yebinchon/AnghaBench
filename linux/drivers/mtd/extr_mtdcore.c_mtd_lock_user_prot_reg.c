
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int (* _lock_user_prot_reg ) (struct mtd_info*,int ,size_t) ;} ;
typedef int loff_t ;


 int EOPNOTSUPP ;
 int stub1 (struct mtd_info*,int ,size_t) ;

int mtd_lock_user_prot_reg(struct mtd_info *mtd, loff_t from, size_t len)
{
 if (!mtd->_lock_user_prot_reg)
  return -EOPNOTSUPP;
 if (!len)
  return 0;
 return mtd->_lock_user_prot_reg(mtd, from, len);
}

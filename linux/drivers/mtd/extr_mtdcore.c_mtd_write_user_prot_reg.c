
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int (* _write_user_prot_reg ) (struct mtd_info*,int ,size_t,size_t*,int *) ;} ;
typedef int loff_t ;


 int ENOSPC ;
 int EOPNOTSUPP ;
 int stub1 (struct mtd_info*,int ,size_t,size_t*,int *) ;

int mtd_write_user_prot_reg(struct mtd_info *mtd, loff_t to, size_t len,
       size_t *retlen, u_char *buf)
{
 int ret;

 *retlen = 0;
 if (!mtd->_write_user_prot_reg)
  return -EOPNOTSUPP;
 if (!len)
  return 0;
 ret = mtd->_write_user_prot_reg(mtd, to, len, retlen, buf);
 if (ret)
  return ret;





 return (*retlen) ? 0 : -ENOSPC;
}

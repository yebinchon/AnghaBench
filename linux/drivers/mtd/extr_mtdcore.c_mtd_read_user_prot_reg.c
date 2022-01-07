
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int (* _read_user_prot_reg ) (struct mtd_info*,int ,size_t,size_t*,int *) ;} ;
typedef int loff_t ;


 int EOPNOTSUPP ;
 int stub1 (struct mtd_info*,int ,size_t,size_t*,int *) ;

int mtd_read_user_prot_reg(struct mtd_info *mtd, loff_t from, size_t len,
      size_t *retlen, u_char *buf)
{
 *retlen = 0;
 if (!mtd->_read_user_prot_reg)
  return -EOPNOTSUPP;
 if (!len)
  return 0;
 return mtd->_read_user_prot_reg(mtd, from, len, retlen, buf);
}

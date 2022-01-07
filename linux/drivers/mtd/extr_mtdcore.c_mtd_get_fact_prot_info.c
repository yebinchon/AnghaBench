
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otp_info {int dummy; } ;
struct mtd_info {int (* _get_fact_prot_info ) (struct mtd_info*,size_t,size_t*,struct otp_info*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct mtd_info*,size_t,size_t*,struct otp_info*) ;

int mtd_get_fact_prot_info(struct mtd_info *mtd, size_t len, size_t *retlen,
      struct otp_info *buf)
{
 if (!mtd->_get_fact_prot_info)
  return -EOPNOTSUPP;
 if (!len)
  return 0;
 return mtd->_get_fact_prot_info(mtd, len, retlen, buf);
}

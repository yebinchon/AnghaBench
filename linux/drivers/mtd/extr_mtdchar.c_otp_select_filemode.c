
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct mtd_file_info {int mode; struct mtd_info* mtd; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MTD_FILE_MODE_NORMAL ;
 int MTD_FILE_MODE_OTP_FACTORY ;
 int MTD_FILE_MODE_OTP_USER ;



 int mtd_read_fact_prot_reg (struct mtd_info*,int,int ,size_t*,int *) ;
 int mtd_read_user_prot_reg (struct mtd_info*,int,int ,size_t*,int *) ;

__attribute__((used)) static int otp_select_filemode(struct mtd_file_info *mfi, int mode)
{
 struct mtd_info *mtd = mfi->mtd;
 size_t retlen;

 switch (mode) {
 case 130:
  if (mtd_read_fact_prot_reg(mtd, -1, 0, &retlen, ((void*)0)) ==
    -EOPNOTSUPP)
   return -EOPNOTSUPP;

  mfi->mode = MTD_FILE_MODE_OTP_FACTORY;
  break;
 case 128:
  if (mtd_read_user_prot_reg(mtd, -1, 0, &retlen, ((void*)0)) ==
    -EOPNOTSUPP)
   return -EOPNOTSUPP;

  mfi->mode = MTD_FILE_MODE_OTP_USER;
  break;
 case 129:
  mfi->mode = MTD_FILE_MODE_NORMAL;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct otp_info {int dummy; } ;
struct mtd_info {int dummy; } ;


 int cfi_amdstd_otp_walk (struct mtd_info*,int ,size_t,size_t*,int *,int *,int) ;

__attribute__((used)) static int cfi_amdstd_get_user_prot_info(struct mtd_info *mtd, size_t len,
      size_t *retlen, struct otp_info *buf)
{
 return cfi_amdstd_otp_walk(mtd, 0, len, retlen, (u_char *)buf,
       ((void*)0), 1);
}

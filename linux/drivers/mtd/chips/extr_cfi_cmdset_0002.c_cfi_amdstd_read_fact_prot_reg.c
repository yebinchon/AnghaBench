
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int cfi_amdstd_otp_walk (struct mtd_info*,int ,size_t,size_t*,int *,int ,int ) ;
 int do_read_secsi_onechip ;

__attribute__((used)) static int cfi_amdstd_read_fact_prot_reg(struct mtd_info *mtd, loff_t from,
      size_t len, size_t *retlen,
      u_char *buf)
{
 return cfi_amdstd_otp_walk(mtd, from, len, retlen,
       buf, do_read_secsi_onechip, 0);
}

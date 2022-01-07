
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath6kl {int dummy; } ;
typedef int __le32 ;


 int ath6kl_err (char*,int ,int ) ;
 int ath6kl_hif_diag_write32 (struct ath6kl*,int ,int ) ;

int ath6kl_diag_write32(struct ath6kl *ar, u32 address, __le32 value)
{
 int ret;

 ret = ath6kl_hif_diag_write32(ar, address, value);

 if (ret) {
  ath6kl_err("failed to write 0x%x during diagnose window to 0x%x\n",
      address, value);
  return ret;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath6kl {int dummy; } ;


 int ath6kl_hif_diag_read32 (struct ath6kl*,int ,int *) ;
 int ath6kl_warn (char*,int) ;

int ath6kl_diag_read32(struct ath6kl *ar, u32 address, u32 *value)
{
 int ret;

 ret = ath6kl_hif_diag_read32(ar, address, value);
 if (ret) {
  ath6kl_warn("failed to read32 through diagnose window: %d\n",
       ret);
  return ret;
 }

 return 0;
}

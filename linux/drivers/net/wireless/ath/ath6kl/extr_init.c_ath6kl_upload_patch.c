
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dataset_patch_addr; } ;
struct ath6kl {int fw_patch_len; int * fw_patch; TYPE_1__ hw; } ;


 int ATH6KL_DBG_BOOT ;
 int ath6kl_bmi_write (struct ath6kl*,int ,int *,int ) ;
 int ath6kl_bmi_write_hi32 (struct ath6kl*,int ,int ) ;
 int ath6kl_dbg (int ,char*,int ,int ) ;
 int ath6kl_err (char*,int) ;
 int hi_dset_list_head ;

__attribute__((used)) static int ath6kl_upload_patch(struct ath6kl *ar)
{
 u32 address;
 int ret;

 if (ar->fw_patch == ((void*)0))
  return 0;

 address = ar->hw.dataset_patch_addr;

 ath6kl_dbg(ATH6KL_DBG_BOOT, "writing patch to 0x%x (%zd B)\n",
     address, ar->fw_patch_len);

 ret = ath6kl_bmi_write(ar, address, ar->fw_patch, ar->fw_patch_len);
 if (ret) {
  ath6kl_err("Failed to write patch file: %d\n", ret);
  return ret;
 }

 ath6kl_bmi_write_hi32(ar, hi_dset_list_head, address);

 return 0;
}

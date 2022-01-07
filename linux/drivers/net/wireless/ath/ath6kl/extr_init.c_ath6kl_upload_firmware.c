
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int app_start_override_addr; int app_load_addr; } ;
struct ath6kl {scalar_t__ target_type; TYPE_1__ hw; int fw_len; int * fw; } ;


 int ATH6KL_DBG_BOOT ;
 scalar_t__ TARGET_TYPE_AR6004 ;
 scalar_t__ WARN_ON (int ) ;
 int ath6kl_bmi_fast_download (struct ath6kl*,int ,int *,int ) ;
 int ath6kl_bmi_set_app_start (struct ath6kl*,int ) ;
 int ath6kl_dbg (int ,char*,int ,int ) ;
 int ath6kl_err (char*,int) ;

__attribute__((used)) static int ath6kl_upload_firmware(struct ath6kl *ar)
{
 u32 address;
 int ret;

 if (WARN_ON(ar->fw == ((void*)0)))
  return 0;

 address = ar->hw.app_load_addr;

 ath6kl_dbg(ATH6KL_DBG_BOOT, "writing firmware to 0x%x (%zd B)\n",
     address, ar->fw_len);

 ret = ath6kl_bmi_fast_download(ar, address, ar->fw, ar->fw_len);

 if (ret) {
  ath6kl_err("Failed to write firmware: %d\n", ret);
  return ret;
 }





 if (ar->target_type != TARGET_TYPE_AR6004) {
  address = ar->hw.app_start_override_addr;
  ath6kl_bmi_set_app_start(ar, address);
 }
 return ret;
}

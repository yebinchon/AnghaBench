
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ app_start_override_addr; scalar_t__ app_load_addr; } ;
struct ath6kl {TYPE_1__ hw; int fw_otp_len; int * fw_otp; } ;


 int ATH6KL_DBG_BOOT ;
 int ath6kl_bmi_execute (struct ath6kl*,scalar_t__,scalar_t__*) ;
 int ath6kl_bmi_fast_download (struct ath6kl*,scalar_t__,int *,int ) ;
 int ath6kl_bmi_read_hi32 (struct ath6kl*,int ,scalar_t__*) ;
 int ath6kl_dbg (int ,char*,char*,...) ;
 int ath6kl_err (char*,int) ;
 int hi_app_start ;

__attribute__((used)) static int ath6kl_upload_otp(struct ath6kl *ar)
{
 u32 address, param;
 bool from_hw = 0;
 int ret;

 if (ar->fw_otp == ((void*)0))
  return 0;

 address = ar->hw.app_load_addr;

 ath6kl_dbg(ATH6KL_DBG_BOOT, "writing otp to 0x%x (%zd B)\n", address,
     ar->fw_otp_len);

 ret = ath6kl_bmi_fast_download(ar, address, ar->fw_otp,
           ar->fw_otp_len);
 if (ret) {
  ath6kl_err("Failed to upload OTP file: %d\n", ret);
  return ret;
 }


 ret = ath6kl_bmi_read_hi32(ar, hi_app_start, &address);

 if (ret) {
  ath6kl_err("Failed to read hi_app_start: %d\n", ret);
  return ret;
 }

 if (ar->hw.app_start_override_addr == 0) {
  ar->hw.app_start_override_addr = address;
  from_hw = 1;
 }

 ath6kl_dbg(ATH6KL_DBG_BOOT, "app_start_override_addr%s 0x%x\n",
     from_hw ? " (from hw)" : "",
     ar->hw.app_start_override_addr);


 ath6kl_dbg(ATH6KL_DBG_BOOT, "executing OTP at 0x%x\n",
     ar->hw.app_start_override_addr);
 param = 0;
 ath6kl_bmi_execute(ar, ar->hw.app_start_override_addr, &param);

 return ret;
}

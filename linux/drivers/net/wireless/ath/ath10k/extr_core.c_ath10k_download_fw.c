
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ fw_diag_ce_download; int patch_load_addr; } ;
struct ath10k {TYPE_2__ hw_params; TYPE_1__* running_fw; } ;
struct TYPE_6__ {void* firmware_data; int firmware_len; } ;
struct TYPE_4__ {TYPE_3__ fw_file; } ;


 int ATH10K_DBG_BOOT ;
 int ath10k_bmi_fast_download (struct ath10k*,int ,void const*,int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,void const*,int ) ;
 int ath10k_err (struct ath10k*,char*,int) ;
 int ath10k_hw_diag_fast_download (struct ath10k*,int ,void const*,int ) ;
 int ath10k_swap_code_seg_configure (struct ath10k*,TYPE_3__*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;

__attribute__((used)) static int ath10k_download_fw(struct ath10k *ar)
{
 u32 address, data_len;
 const void *data;
 int ret;

 address = ar->hw_params.patch_load_addr;

 data = ar->running_fw->fw_file.firmware_data;
 data_len = ar->running_fw->fw_file.firmware_len;

 ret = ath10k_swap_code_seg_configure(ar, &ar->running_fw->fw_file);
 if (ret) {
  ath10k_err(ar, "failed to configure fw code swap: %d\n",
      ret);
  return ret;
 }

 ath10k_dbg(ar, ATH10K_DBG_BOOT,
     "boot uploading firmware image %pK len %d\n",
     data, data_len);





 if (ar->hw_params.fw_diag_ce_download) {
  ret = ath10k_hw_diag_fast_download(ar, address,
         data, data_len);
  if (ret == 0)

   return 0;

  ath10k_warn(ar,
       "failed to upload firmware via diag ce, trying BMI: %d",
       ret);
 }

 return ath10k_bmi_fast_download(ar, address,
     data, data_len);
}

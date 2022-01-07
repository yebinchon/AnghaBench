
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dir; } ;
struct TYPE_6__ {TYPE_2__ fw; } ;
struct TYPE_4__ {int fw_file; } ;
struct ath10k {int fw_api; TYPE_3__ hw_params; TYPE_1__ normal_mode_fw; } ;
typedef int fw_name ;


 int ATH10K_DBG_BOOT ;
 int ATH10K_FW_API_MAX ;
 int ATH10K_FW_API_MIN ;
 int ath10k_core_fetch_firmware_api_n (struct ath10k*,char*,int *) ;
 int ath10k_core_get_fw_name (struct ath10k*,char*,int,int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int ath10k_err (struct ath10k*,char*,int,int,int ,int) ;
 int ath10k_fetch_cal_file (struct ath10k*) ;

__attribute__((used)) static int ath10k_core_fetch_firmware_files(struct ath10k *ar)
{
 int ret, i;
 char fw_name[100];


 ath10k_fetch_cal_file(ar);

 for (i = ATH10K_FW_API_MAX; i >= ATH10K_FW_API_MIN; i--) {
  ar->fw_api = i;
  ath10k_dbg(ar, ATH10K_DBG_BOOT, "trying fw api %d\n",
      ar->fw_api);

  ath10k_core_get_fw_name(ar, fw_name, sizeof(fw_name), ar->fw_api);
  ret = ath10k_core_fetch_firmware_api_n(ar, fw_name,
             &ar->normal_mode_fw.fw_file);
  if (!ret)
   goto success;
 }



 ath10k_err(ar, "Failed to find firmware-N.bin (N between %d and %d) from %s: %d",
     ATH10K_FW_API_MIN, ATH10K_FW_API_MAX, ar->hw_params.fw.dir,
     ret);

 return ret;

success:
 ath10k_dbg(ar, ATH10K_DBG_BOOT, "using fw api %d\n", ar->fw_api);

 return 0;
}

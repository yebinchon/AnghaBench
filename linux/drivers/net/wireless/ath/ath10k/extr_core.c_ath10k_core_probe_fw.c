
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int target_info ;
struct bmi_target_info {int version; } ;
struct TYPE_9__ {int fw_features; int fw_version; } ;
struct TYPE_10__ {TYPE_4__ fw_file; } ;
struct TYPE_6__ {int bus; } ;
struct ath10k {int conf_mutex; TYPE_5__ normal_mode_fw; int mac_addr; int dev; TYPE_3__* hw; TYPE_1__ hif; int target_version; } ;
struct TYPE_8__ {TYPE_2__* wiphy; } ;
struct TYPE_7__ {int fw_version; int hw_version; } ;


 int ATH10K_BD_IE_BOARD ;





 int ATH10K_DBG_BOOT ;
 int ATH10K_FIRMWARE_MODE_NORMAL ;
 int ATH10K_FW_FEATURE_NON_BMI ;
 int BUILD_BUG_ON (int) ;
 int EOPNOTSUPP ;
 int ath10k_bmi_get_target_info (struct ath10k*,struct bmi_target_info*) ;
 int ath10k_bmi_get_target_info_sdio (struct ath10k*,struct bmi_target_info*) ;
 int ath10k_core_check_dt (struct ath10k*) ;
 int ath10k_core_check_smbios (struct ath10k*) ;
 int ath10k_core_fetch_board_file (struct ath10k*,int ) ;
 int ath10k_core_fetch_firmware_files (struct ath10k*) ;
 int ath10k_core_free_firmware_files (struct ath10k*) ;
 int ath10k_core_get_board_id_from_otp (struct ath10k*) ;
 int ath10k_core_init_firmware_features (struct ath10k*) ;
 int ath10k_core_pre_cal_download (struct ath10k*) ;
 int ath10k_core_start (struct ath10k*,int ,TYPE_5__*) ;
 int ath10k_core_stop (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*,...) ;
 int ath10k_debug_print_board_info (struct ath10k*) ;
 int ath10k_debug_print_boot_info (struct ath10k*) ;
 int ath10k_debug_print_hwfw_info (struct ath10k*) ;
 int ath10k_err (struct ath10k*,char*,int) ;
 int ath10k_hif_get_target_info (struct ath10k*,struct bmi_target_info*) ;
 int ath10k_hif_power_down (struct ath10k*) ;
 int ath10k_hif_power_up (struct ath10k*,int ) ;
 int ath10k_init_hw_params (struct ath10k*) ;
 int ath10k_swap_code_seg_init (struct ath10k*,TYPE_4__*) ;
 int device_get_mac_address (int ,int ,int) ;
 int memcpy (int ,int ,int) ;
 int memset (struct bmi_target_info*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ath10k_core_probe_fw(struct ath10k *ar)
{
 struct bmi_target_info target_info;
 int ret = 0;

 ret = ath10k_hif_power_up(ar, ATH10K_FIRMWARE_MODE_NORMAL);
 if (ret) {
  ath10k_err(ar, "could not power on hif bus (%d)\n", ret);
  return ret;
 }

 switch (ar->hif.bus) {
 case 130:
  memset(&target_info, 0, sizeof(target_info));
  ret = ath10k_bmi_get_target_info_sdio(ar, &target_info);
  if (ret) {
   ath10k_err(ar, "could not get target info (%d)\n", ret);
   goto err_power_down;
  }
  ar->target_version = target_info.version;
  ar->hw->wiphy->hw_version = target_info.version;
  break;
 case 131:
 case 132:
 case 128:
  memset(&target_info, 0, sizeof(target_info));
  ret = ath10k_bmi_get_target_info(ar, &target_info);
  if (ret) {
   ath10k_err(ar, "could not get target info (%d)\n", ret);
   goto err_power_down;
  }
  ar->target_version = target_info.version;
  ar->hw->wiphy->hw_version = target_info.version;
  break;
 case 129:
  memset(&target_info, 0, sizeof(target_info));
  ret = ath10k_hif_get_target_info(ar, &target_info);
  if (ret) {
   ath10k_err(ar, "could not get target info (%d)\n", ret);
   goto err_power_down;
  }
  ar->target_version = target_info.version;
  ar->hw->wiphy->hw_version = target_info.version;
  break;
 default:
  ath10k_err(ar, "incorrect hif bus type: %d\n", ar->hif.bus);
 }

 ret = ath10k_init_hw_params(ar);
 if (ret) {
  ath10k_err(ar, "could not get hw params (%d)\n", ret);
  goto err_power_down;
 }

 ret = ath10k_core_fetch_firmware_files(ar);
 if (ret) {
  ath10k_err(ar, "could not fetch firmware files (%d)\n", ret);
  goto err_power_down;
 }

 BUILD_BUG_ON(sizeof(ar->hw->wiphy->fw_version) !=
       sizeof(ar->normal_mode_fw.fw_file.fw_version));
 memcpy(ar->hw->wiphy->fw_version, ar->normal_mode_fw.fw_file.fw_version,
        sizeof(ar->hw->wiphy->fw_version));

 ath10k_debug_print_hwfw_info(ar);

 if (!test_bit(ATH10K_FW_FEATURE_NON_BMI,
        ar->normal_mode_fw.fw_file.fw_features)) {
  ret = ath10k_core_pre_cal_download(ar);
  if (ret) {



   ath10k_dbg(ar, ATH10K_DBG_BOOT,
       "could not load pre cal data: %d\n", ret);
  }

  ret = ath10k_core_get_board_id_from_otp(ar);
  if (ret && ret != -EOPNOTSUPP) {
   ath10k_err(ar, "failed to get board id from otp: %d\n",
       ret);
   goto err_free_firmware_files;
  }

  ret = ath10k_core_check_smbios(ar);
  if (ret)
   ath10k_dbg(ar, ATH10K_DBG_BOOT, "SMBIOS bdf variant name not set.\n");

  ret = ath10k_core_check_dt(ar);
  if (ret)
   ath10k_dbg(ar, ATH10K_DBG_BOOT, "DT bdf variant name not set.\n");

  ret = ath10k_core_fetch_board_file(ar, ATH10K_BD_IE_BOARD);
  if (ret) {
   ath10k_err(ar, "failed to fetch board file: %d\n", ret);
   goto err_free_firmware_files;
  }

  ath10k_debug_print_board_info(ar);
 }

 device_get_mac_address(ar->dev, ar->mac_addr, sizeof(ar->mac_addr));

 ret = ath10k_core_init_firmware_features(ar);
 if (ret) {
  ath10k_err(ar, "fatal problem with firmware features: %d\n",
      ret);
  goto err_free_firmware_files;
 }

 if (!test_bit(ATH10K_FW_FEATURE_NON_BMI,
        ar->normal_mode_fw.fw_file.fw_features)) {
  ret = ath10k_swap_code_seg_init(ar,
      &ar->normal_mode_fw.fw_file);
  if (ret) {
   ath10k_err(ar, "failed to initialize code swap segment: %d\n",
       ret);
   goto err_free_firmware_files;
  }
 }

 mutex_lock(&ar->conf_mutex);

 ret = ath10k_core_start(ar, ATH10K_FIRMWARE_MODE_NORMAL,
    &ar->normal_mode_fw);
 if (ret) {
  ath10k_err(ar, "could not init core (%d)\n", ret);
  goto err_unlock;
 }

 ath10k_debug_print_boot_info(ar);
 ath10k_core_stop(ar);

 mutex_unlock(&ar->conf_mutex);

 ath10k_hif_power_down(ar);
 return 0;

err_unlock:
 mutex_unlock(&ar->conf_mutex);

err_free_firmware_files:
 ath10k_core_free_firmware_files(ar);

err_power_down:
 ath10k_hif_power_down(ar);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int htt_op_version; int wmi_op_version; } ;
struct TYPE_6__ {TYPE_2__ fw_file; } ;
struct TYPE_4__ {int target_version_minor; int target_version_major; } ;
struct ath10k {int dev_flags; int max_num_stations; int cal_mode; TYPE_3__ normal_mode_fw; TYPE_1__ htt; } ;


 int ATH10K_FLAG_HW_CRYPTO_DISABLED ;
 int ATH10K_FLAG_RAW_MODE ;
 int ath10k_cal_mode_str (int ) ;
 int ath10k_info (struct ath10k*,char*,int ,int ,int ,int ,int ,int ,int ,int) ;
 int test_bit (int ,int *) ;

void ath10k_debug_print_boot_info(struct ath10k *ar)
{
 ath10k_info(ar, "htt-ver %d.%d wmi-op %d htt-op %d cal %s max-sta %d raw %d hwcrypto %d\n",
      ar->htt.target_version_major,
      ar->htt.target_version_minor,
      ar->normal_mode_fw.fw_file.wmi_op_version,
      ar->normal_mode_fw.fw_file.htt_op_version,
      ath10k_cal_mode_str(ar->cal_mode),
      ar->max_num_stations,
      test_bit(ATH10K_FLAG_RAW_MODE, &ar->dev_flags),
      !test_bit(ATH10K_FLAG_HW_CRYPTO_DISABLED, &ar->dev_flags));
}

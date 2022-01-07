
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ firmware_len; int * firmware_data; int * firmware; scalar_t__ otp_len; int * otp_data; } ;
struct TYPE_3__ {TYPE_2__ fw_file; } ;
struct ath10k {int * pre_cal_file; int * cal_file; TYPE_1__ normal_mode_fw; } ;


 int IS_ERR (int *) ;
 int ath10k_swap_code_seg_release (struct ath10k*,TYPE_2__*) ;
 int release_firmware (int *) ;

__attribute__((used)) static void ath10k_core_free_firmware_files(struct ath10k *ar)
{
 if (!IS_ERR(ar->normal_mode_fw.fw_file.firmware))
  release_firmware(ar->normal_mode_fw.fw_file.firmware);

 if (!IS_ERR(ar->cal_file))
  release_firmware(ar->cal_file);

 if (!IS_ERR(ar->pre_cal_file))
  release_firmware(ar->pre_cal_file);

 ath10k_swap_code_seg_release(ar, &ar->normal_mode_fw.fw_file);

 ar->normal_mode_fw.fw_file.otp_data = ((void*)0);
 ar->normal_mode_fw.fw_file.otp_len = 0;

 ar->normal_mode_fw.fw_file.firmware = ((void*)0);
 ar->normal_mode_fw.fw_file.firmware_data = ((void*)0);
 ar->normal_mode_fw.fw_file.firmware_len = 0;

 ar->cal_file = ((void*)0);
 ar->pre_cal_file = ((void*)0);
}

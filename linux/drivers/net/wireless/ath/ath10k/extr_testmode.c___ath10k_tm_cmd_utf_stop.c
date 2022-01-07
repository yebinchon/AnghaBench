
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * firmware; scalar_t__ codeswap_len; scalar_t__ codeswap_data; } ;
struct TYPE_4__ {TYPE_3__ fw_file; } ;
struct TYPE_5__ {int utf_monitor; TYPE_1__ utf_mode_fw; } ;
struct ath10k {int state; TYPE_2__ testmode; int data_lock; int conf_mutex; } ;


 int ATH10K_STATE_OFF ;
 int ath10k_core_stop (struct ath10k*) ;
 int ath10k_hif_power_down (struct ath10k*) ;
 int ath10k_swap_code_seg_release (struct ath10k*,TYPE_3__*) ;
 int lockdep_assert_held (int *) ;
 int release_firmware (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void __ath10k_tm_cmd_utf_stop(struct ath10k *ar)
{
 lockdep_assert_held(&ar->conf_mutex);

 ath10k_core_stop(ar);
 ath10k_hif_power_down(ar);

 spin_lock_bh(&ar->data_lock);

 ar->testmode.utf_monitor = 0;

 spin_unlock_bh(&ar->data_lock);

 if (ar->testmode.utf_mode_fw.fw_file.codeswap_data &&
     ar->testmode.utf_mode_fw.fw_file.codeswap_len)
  ath10k_swap_code_seg_release(ar,
          &ar->testmode.utf_mode_fw.fw_file);

 release_firmware(ar->testmode.utf_mode_fw.fw_file.firmware);
 ar->testmode.utf_mode_fw.fw_file.firmware = ((void*)0);

 ar->state = ATH10K_STATE_OFF;
}

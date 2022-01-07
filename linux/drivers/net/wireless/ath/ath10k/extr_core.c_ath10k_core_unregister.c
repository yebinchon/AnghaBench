
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dev_flags; int register_work; } ;


 int ATH10K_FLAG_CORE_REGISTERED ;
 int ath10k_core_free_board_files (struct ath10k*) ;
 int ath10k_core_free_firmware_files (struct ath10k*) ;
 int ath10k_debug_unregister (struct ath10k*) ;
 int ath10k_mac_unregister (struct ath10k*) ;
 int ath10k_spectral_destroy (struct ath10k*) ;
 int ath10k_testmode_destroy (struct ath10k*) ;
 int ath10k_thermal_unregister (struct ath10k*) ;
 int cancel_work_sync (int *) ;
 int test_bit (int ,int *) ;

void ath10k_core_unregister(struct ath10k *ar)
{
 cancel_work_sync(&ar->register_work);

 if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
  return;

 ath10k_thermal_unregister(ar);




 ath10k_spectral_destroy(ar);





 ath10k_mac_unregister(ar);

 ath10k_testmode_destroy(ar);

 ath10k_core_free_firmware_files(ar);
 ath10k_core_free_board_files(ar);

 ath10k_debug_unregister(ar);
}

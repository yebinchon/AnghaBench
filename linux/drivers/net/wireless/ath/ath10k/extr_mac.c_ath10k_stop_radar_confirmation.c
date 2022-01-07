
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int radar_confirmation_work; int data_lock; int radar_conf_state; } ;


 int ATH10K_RADAR_CONFIRMATION_STOPPED ;
 int cancel_work_sync (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_stop_radar_confirmation(struct ath10k *ar)
{
 spin_lock_bh(&ar->data_lock);
 ar->radar_conf_state = ATH10K_RADAR_CONFIRMATION_STOPPED;
 spin_unlock_bh(&ar->data_lock);

 cancel_work_sync(&ar->radar_confirmation_work);
}

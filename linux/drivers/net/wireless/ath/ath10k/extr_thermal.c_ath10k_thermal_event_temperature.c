
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int temperature; int wmi_sync; } ;
struct ath10k {TYPE_1__ thermal; int data_lock; } ;


 int complete (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath10k_thermal_event_temperature(struct ath10k *ar, int temperature)
{
 spin_lock_bh(&ar->data_lock);
 ar->thermal.temperature = temperature;
 spin_unlock_bh(&ar->data_lock);
 complete(&ar->thermal.wmi_sync);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int barrier; } ;
struct ath10k {TYPE_1__ wmi; int data_lock; } ;


 int ATH10K_WMI_BARRIER_ECHO_ID ;
 int ATH10K_WMI_BARRIER_TIMEOUT_HZ ;
 int ETIMEDOUT ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_echo (struct ath10k*,int ) ;
 int reinit_completion (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

int
ath10k_wmi_barrier(struct ath10k *ar)
{
 int ret;
 int time_left;

 spin_lock_bh(&ar->data_lock);
 reinit_completion(&ar->wmi.barrier);
 spin_unlock_bh(&ar->data_lock);

 ret = ath10k_wmi_echo(ar, ATH10K_WMI_BARRIER_ECHO_ID);
 if (ret) {
  ath10k_warn(ar, "failed to submit wmi echo: %d\n", ret);
  return ret;
 }

 time_left = wait_for_completion_timeout(&ar->wmi.barrier,
      ATH10K_WMI_BARRIER_TIMEOUT_HZ);
 if (!time_left)
  return -ETIMEDOUT;

 return 0;
}

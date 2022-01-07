
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wakeup_completed; } ;
struct ath10k {TYPE_1__ wow; int conf_mutex; } ;


 int ETIMEDOUT ;
 int HZ ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int ath10k_wmi_wow_host_wakeup_ind (struct ath10k*) ;
 int lockdep_assert_held (int *) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int ath10k_wow_wakeup(struct ath10k *ar)
{
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 reinit_completion(&ar->wow.wakeup_completed);

 ret = ath10k_wmi_wow_host_wakeup_ind(ar);
 if (ret) {
  ath10k_warn(ar, "failed to send wow wakeup indication: %d\n",
       ret);
  return ret;
 }

 ret = wait_for_completion_timeout(&ar->wow.wakeup_completed, 3 * HZ);
 if (ret == 0) {
  ath10k_warn(ar, "timed out while waiting for wow wakeup completion\n");
  return -ETIMEDOUT;
 }

 return 0;
}

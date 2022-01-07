
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int target_suspend; int conf_mutex; } ;


 int ETIMEDOUT ;
 int HZ ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int ath10k_wmi_wow_enable (struct ath10k*) ;
 int lockdep_assert_held (int *) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int ath10k_wow_enable(struct ath10k *ar)
{
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 reinit_completion(&ar->target_suspend);

 ret = ath10k_wmi_wow_enable(ar);
 if (ret) {
  ath10k_warn(ar, "failed to issue wow enable: %d\n", ret);
  return ret;
 }

 ret = wait_for_completion_timeout(&ar->target_suspend, 3 * HZ);
 if (ret == 0) {
  ath10k_warn(ar, "timed out while waiting for suspend completion\n");
  return -ETIMEDOUT;
 }

 return 0;
}

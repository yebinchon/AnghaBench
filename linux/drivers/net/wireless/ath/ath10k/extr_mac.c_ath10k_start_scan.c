
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_start_scan_arg {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; int started; } ;
struct ath10k {int data_lock; TYPE_1__ scan; int conf_mutex; } ;


 scalar_t__ ATH10K_SCAN_IDLE ;
 int EINVAL ;
 int ETIMEDOUT ;
 int HZ ;
 int ath10k_scan_stop (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_start_scan (struct ath10k*,struct wmi_start_scan_arg const*) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int ath10k_start_scan(struct ath10k *ar,
        const struct wmi_start_scan_arg *arg)
{
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 ret = ath10k_wmi_start_scan(ar, arg);
 if (ret)
  return ret;

 ret = wait_for_completion_timeout(&ar->scan.started, 1 * HZ);
 if (ret == 0) {
  ret = ath10k_scan_stop(ar);
  if (ret)
   ath10k_warn(ar, "failed to stop scan: %d\n", ret);

  return -ETIMEDOUT;
 }





 spin_lock_bh(&ar->data_lock);
 if (ar->scan.state == ATH10K_SCAN_IDLE) {
  spin_unlock_bh(&ar->data_lock);
  return -EINVAL;
 }
 spin_unlock_bh(&ar->data_lock);

 return 0;
}

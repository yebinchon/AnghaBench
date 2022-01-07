
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int scan_id; } ;
struct wmi_stop_scan_arg {int req_id; TYPE_2__ u; int req_type; } ;
struct TYPE_3__ {scalar_t__ state; int completed; } ;
struct ath10k {int data_lock; TYPE_1__ scan; int conf_mutex; } ;


 int ATH10K_SCAN_ID ;
 scalar_t__ ATH10K_SCAN_IDLE ;
 int ETIMEDOUT ;
 int HZ ;
 int WMI_SCAN_STOP_ONE ;
 int __ath10k_scan_finish (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int ath10k_wmi_stop_scan (struct ath10k*,struct wmi_stop_scan_arg*) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int ath10k_scan_stop(struct ath10k *ar)
{
 struct wmi_stop_scan_arg arg = {
  .req_id = 1,
  .req_type = WMI_SCAN_STOP_ONE,
  .u.scan_id = ATH10K_SCAN_ID,
 };
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 ret = ath10k_wmi_stop_scan(ar, &arg);
 if (ret) {
  ath10k_warn(ar, "failed to stop wmi scan: %d\n", ret);
  goto out;
 }

 ret = wait_for_completion_timeout(&ar->scan.completed, 3 * HZ);
 if (ret == 0) {
  ath10k_warn(ar, "failed to receive scan abortion completion: timed out\n");
  ret = -ETIMEDOUT;
 } else if (ret > 0) {
  ret = 0;
 }

out:







 spin_lock_bh(&ar->data_lock);
 if (ar->scan.state != ATH10K_SCAN_IDLE)
  __ath10k_scan_finish(ar);
 spin_unlock_bh(&ar->data_lock);

 return ret;
}

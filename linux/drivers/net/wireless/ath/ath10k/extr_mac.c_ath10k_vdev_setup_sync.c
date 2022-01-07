
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int last_wmi_vdev_start_status; int vdev_setup_done; int dev_flags; int conf_mutex; } ;


 int ATH10K_FLAG_CRASH_FLUSH ;
 int ATH10K_VDEV_SETUP_TIMEOUT_HZ ;
 int ESHUTDOWN ;
 int ETIMEDOUT ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static inline int ath10k_vdev_setup_sync(struct ath10k *ar)
{
 unsigned long time_left;

 lockdep_assert_held(&ar->conf_mutex);

 if (test_bit(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags))
  return -ESHUTDOWN;

 time_left = wait_for_completion_timeout(&ar->vdev_setup_done,
      ATH10K_VDEV_SETUP_TIMEOUT_HZ);
 if (time_left == 0)
  return -ETIMEDOUT;

 return ar->last_wmi_vdev_start_status;
}

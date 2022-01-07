
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int monitor_started; int conf_mutex; } ;


 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_monitor_vdev_delete (struct ath10k*) ;
 int ath10k_monitor_vdev_stop (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_monitor_stop(struct ath10k *ar)
{
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 ret = ath10k_monitor_vdev_stop(ar);
 if (ret) {
  ath10k_warn(ar, "failed to stop monitor vdev: %d\n", ret);
  return ret;
 }

 ret = ath10k_monitor_vdev_delete(ar);
 if (ret) {
  ath10k_warn(ar, "failed to delete monitor vdev: %d\n", ret);
  return ret;
 }

 ar->monitor_started = 0;
 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac monitor stopped\n");

 return 0;
}

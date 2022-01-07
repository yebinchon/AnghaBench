
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int monitor_started; int monitor_vdev_id; int conf_mutex; } ;


 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_monitor_vdev_create (struct ath10k*) ;
 int ath10k_monitor_vdev_delete (struct ath10k*) ;
 int ath10k_monitor_vdev_start (struct ath10k*,int ) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_monitor_start(struct ath10k *ar)
{
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 ret = ath10k_monitor_vdev_create(ar);
 if (ret) {
  ath10k_warn(ar, "failed to create monitor vdev: %d\n", ret);
  return ret;
 }

 ret = ath10k_monitor_vdev_start(ar, ar->monitor_vdev_id);
 if (ret) {
  ath10k_warn(ar, "failed to start monitor vdev: %d\n", ret);
  ath10k_monitor_vdev_delete(ar);
  return ret;
 }

 ar->monitor_started = 1;
 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac monitor started\n");

 return 0;
}

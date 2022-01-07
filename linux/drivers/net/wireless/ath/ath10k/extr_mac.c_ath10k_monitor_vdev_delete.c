
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {long long monitor_vdev_id; long long free_vdev_map; int conf_mutex; } ;


 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*,long long) ;
 int ath10k_warn (struct ath10k*,char*,long long,int) ;
 int ath10k_wmi_vdev_delete (struct ath10k*,long long) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_monitor_vdev_delete(struct ath10k *ar)
{
 int ret = 0;

 lockdep_assert_held(&ar->conf_mutex);

 ret = ath10k_wmi_vdev_delete(ar, ar->monitor_vdev_id);
 if (ret) {
  ath10k_warn(ar, "failed to request wmi monitor vdev %i removal: %d\n",
       ar->monitor_vdev_id, ret);
  return ret;
 }

 ar->free_vdev_map |= 1LL << ar->monitor_vdev_id;

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac monitor vdev %d deleted\n",
     ar->monitor_vdev_id);
 return ret;
}

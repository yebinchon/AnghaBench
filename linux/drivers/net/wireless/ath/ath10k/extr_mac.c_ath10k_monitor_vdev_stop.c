
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int monitor_vdev_id; int vdev_delete_done; int vdev_setup_done; int conf_mutex; } ;


 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 int ath10k_vdev_setup_sync (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_vdev_down (struct ath10k*,int ) ;
 int ath10k_wmi_vdev_stop (struct ath10k*,int ) ;
 int lockdep_assert_held (int *) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int ath10k_monitor_vdev_stop(struct ath10k *ar)
{
 int ret = 0;

 lockdep_assert_held(&ar->conf_mutex);

 ret = ath10k_wmi_vdev_down(ar, ar->monitor_vdev_id);
 if (ret)
  ath10k_warn(ar, "failed to put down monitor vdev %i: %d\n",
       ar->monitor_vdev_id, ret);

 reinit_completion(&ar->vdev_setup_done);
 reinit_completion(&ar->vdev_delete_done);

 ret = ath10k_wmi_vdev_stop(ar, ar->monitor_vdev_id);
 if (ret)
  ath10k_warn(ar, "failed to to request monitor vdev %i stop: %d\n",
       ar->monitor_vdev_id, ret);

 ret = ath10k_vdev_setup_sync(ar);
 if (ret)
  ath10k_warn(ar, "failed to synchronize monitor vdev %i stop: %d\n",
       ar->monitor_vdev_id, ret);

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac monitor vdev %i stopped\n",
     ar->monitor_vdev_id);
 return ret;
}

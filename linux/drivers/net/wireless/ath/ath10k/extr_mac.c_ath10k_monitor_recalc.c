
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int monitor_started; int conf_mutex; } ;


 int ATH10K_DBG_MAC ;
 int EPERM ;
 scalar_t__ WARN_ON (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,...) ;
 int ath10k_mac_monitor_vdev_is_allowed (struct ath10k*) ;
 int ath10k_mac_monitor_vdev_is_needed (struct ath10k*) ;
 int ath10k_monitor_start (struct ath10k*) ;
 int ath10k_monitor_stop (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_monitor_recalc(struct ath10k *ar)
{
 bool needed;
 bool allowed;
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 needed = ath10k_mac_monitor_vdev_is_needed(ar);
 allowed = ath10k_mac_monitor_vdev_is_allowed(ar);

 ath10k_dbg(ar, ATH10K_DBG_MAC,
     "mac monitor recalc started? %d needed? %d allowed? %d\n",
     ar->monitor_started, needed, allowed);

 if (WARN_ON(needed && !allowed)) {
  if (ar->monitor_started) {
   ath10k_dbg(ar, ATH10K_DBG_MAC, "mac monitor stopping disallowed monitor\n");

   ret = ath10k_monitor_stop(ar);
   if (ret)
    ath10k_warn(ar, "failed to stop disallowed monitor: %d\n",
         ret);

  }

  return -EPERM;
 }

 if (needed == ar->monitor_started)
  return 0;

 if (needed)
  return ath10k_monitor_start(ar);
 else
  return ath10k_monitor_stop(ar);
}

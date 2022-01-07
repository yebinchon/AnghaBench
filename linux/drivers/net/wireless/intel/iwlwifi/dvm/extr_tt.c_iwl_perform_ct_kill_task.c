
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ct_kill_exit_tm; } ;
struct iwl_priv {int hw; scalar_t__ mac80211_registered; TYPE_1__ thermal_throttle; } ;


 int CT_KILL_EXIT_DURATION ;
 int HZ ;
 int IWL_DEBUG_TEMP (struct iwl_priv*,char*) ;
 int ieee80211_stop_queues (int ) ;
 int ieee80211_wake_queues (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void iwl_perform_ct_kill_task(struct iwl_priv *priv,
      bool stop)
{
 if (stop) {
  IWL_DEBUG_TEMP(priv, "Stop all queues\n");
  if (priv->mac80211_registered)
   ieee80211_stop_queues(priv->hw);
  IWL_DEBUG_TEMP(priv,
    "Schedule 5 seconds CT_KILL Timer\n");
  mod_timer(&priv->thermal_throttle.ct_kill_exit_tm,
     jiffies + CT_KILL_EXIT_DURATION * HZ);
 } else {
  IWL_DEBUG_TEMP(priv, "Wake all queues\n");
  if (priv->mac80211_registered)
   ieee80211_wake_queues(priv->hw);
 }
}

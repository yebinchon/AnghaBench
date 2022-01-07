
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k {scalar_t__ state; int conf_mutex; int hw; } ;
typedef enum ieee80211_reconfig_type { ____Placeholder_ieee80211_reconfig_type } ieee80211_reconfig_type ;


 scalar_t__ ATH10K_STATE_ON ;
 scalar_t__ ATH10K_STATE_RESTARTED ;
 int IEEE80211_RECONFIG_TYPE_RESTART ;
 int ath10k_info (struct ath10k*,char*) ;
 int ieee80211_wake_queues (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath10k_reconfig_complete(struct ieee80211_hw *hw,
         enum ieee80211_reconfig_type reconfig_type)
{
 struct ath10k *ar = hw->priv;

 if (reconfig_type != IEEE80211_RECONFIG_TYPE_RESTART)
  return;

 mutex_lock(&ar->conf_mutex);




 if (ar->state == ATH10K_STATE_RESTARTED) {
  ath10k_info(ar, "device successfully recovered\n");
  ar->state = ATH10K_STATE_ON;
  ieee80211_wake_queues(ar->hw);
 }

 mutex_unlock(&ar->conf_mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_conf {int flags; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct ath10k* priv; } ;
struct ath10k {int monitor; int conf_mutex; } ;


 int IEEE80211_CONF_CHANGE_MONITOR ;
 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_MONITOR ;
 int ath10k_config_ps (struct ath10k*) ;
 int ath10k_monitor_recalc (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath10k_config(struct ieee80211_hw *hw, u32 changed)
{
 struct ath10k *ar = hw->priv;
 struct ieee80211_conf *conf = &hw->conf;
 int ret = 0;

 mutex_lock(&ar->conf_mutex);

 if (changed & IEEE80211_CONF_CHANGE_PS)
  ath10k_config_ps(ar);

 if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
  ar->monitor = conf->flags & IEEE80211_CONF_MONITOR;
  ret = ath10k_monitor_recalc(ar);
  if (ret)
   ath10k_warn(ar, "failed to recalc monitor: %d\n", ret);
 }

 mutex_unlock(&ar->conf_mutex);
 return ret;
}

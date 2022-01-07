
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {struct ieee80211_channel* chan; } ;
struct ieee80211_conf {int flags; int power_level; TYPE_4__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct ath9k_htc_priv* priv; } ;
struct ieee80211_channel {int hw_value; int center_freq; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_priv {int ps_idle; int ps_enabled; int txpowlimit; int mutex; int curtxpow; TYPE_1__* ah; int ps_work; int htc_pm_lock; } ;
struct TYPE_5__ {int * channels; scalar_t__ is_monitoring; } ;


 int ATH9K_PM_AWAKE ;
 int ATH9K_PM_NETWORK_SLEEP ;
 int CONFIG ;
 int EINVAL ;
 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_IDLE ;
 int IEEE80211_CONF_CHANGE_MONITOR ;
 int IEEE80211_CONF_CHANGE_POWER ;
 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_IDLE ;
 int IEEE80211_CONF_MONITOR ;
 int IEEE80211_CONF_PS ;
 int ath9k_cmn_get_channel (struct ieee80211_hw*,TYPE_1__*,TYPE_4__*) ;
 int ath9k_cmn_update_txpow (TYPE_1__*,int ,int,int *) ;
 int ath9k_htc_add_monitor_interface (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_htc_remove_monitor_interface (struct ath9k_htc_priv*) ;
 scalar_t__ ath9k_htc_set_channel (struct ath9k_htc_priv*,struct ieee80211_hw*,int *) ;
 int ath9k_htc_setpower (struct ath9k_htc_priv*,int ) ;
 struct ath_common* ath9k_hw_common (TYPE_1__*) ;
 int ath_dbg (struct ath_common*,int ,char*,int ) ;
 int ath_err (struct ath_common*,char*) ;
 int cancel_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath9k_htc_config(struct ieee80211_hw *hw, u32 changed)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ieee80211_conf *conf = &hw->conf;
 bool chip_reset = 0;
 int ret = 0;

 mutex_lock(&priv->mutex);
 ath9k_htc_ps_wakeup(priv);

 if (changed & IEEE80211_CONF_CHANGE_IDLE) {
  mutex_lock(&priv->htc_pm_lock);

  priv->ps_idle = !!(conf->flags & IEEE80211_CONF_IDLE);
  if (!priv->ps_idle)
   chip_reset = 1;

  mutex_unlock(&priv->htc_pm_lock);
 }





 if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
  if ((conf->flags & IEEE80211_CONF_MONITOR) &&
      !priv->ah->is_monitoring)
   ath9k_htc_add_monitor_interface(priv);
  else if (priv->ah->is_monitoring)
   ath9k_htc_remove_monitor_interface(priv);
 }

 if ((changed & IEEE80211_CONF_CHANGE_CHANNEL) || chip_reset) {
  struct ieee80211_channel *curchan = hw->conf.chandef.chan;
  int pos = curchan->hw_value;

  ath_dbg(common, CONFIG, "Set channel: %d MHz\n",
   curchan->center_freq);

  ath9k_cmn_get_channel(hw, priv->ah, &hw->conf.chandef);
  if (ath9k_htc_set_channel(priv, hw, &priv->ah->channels[pos]) < 0) {
   ath_err(common, "Unable to set channel\n");
   ret = -EINVAL;
   goto out;
  }

 }

 if (changed & IEEE80211_CONF_CHANGE_PS) {
  if (conf->flags & IEEE80211_CONF_PS) {
   ath9k_htc_setpower(priv, ATH9K_PM_NETWORK_SLEEP);
   priv->ps_enabled = 1;
  } else {
   priv->ps_enabled = 0;
   cancel_work_sync(&priv->ps_work);
   ath9k_htc_setpower(priv, ATH9K_PM_AWAKE);
  }
 }

 if (changed & IEEE80211_CONF_CHANGE_POWER) {
  priv->txpowlimit = 2 * conf->power_level;
  ath9k_cmn_update_txpow(priv->ah, priv->curtxpow,
           priv->txpowlimit, &priv->curtxpow);
 }

out:
 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);
 return ret;
}

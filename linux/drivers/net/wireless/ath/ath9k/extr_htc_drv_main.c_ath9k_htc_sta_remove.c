
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_sta {int index; int rc_update_work; } ;
struct ath9k_htc_priv {int mutex; int htc; } ;


 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_htc_remove_station (struct ath9k_htc_priv*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int cancel_work_sync (int *) ;
 int htc_sta_drain (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath9k_htc_sta_remove(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif,
    struct ieee80211_sta *sta)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath9k_htc_sta *ista = (struct ath9k_htc_sta *) sta->drv_priv;
 int ret;

 cancel_work_sync(&ista->rc_update_work);

 mutex_lock(&priv->mutex);
 ath9k_htc_ps_wakeup(priv);
 htc_sta_drain(priv->htc, ista->index);
 ret = ath9k_htc_remove_station(priv, vif, sta);
 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);

 return ret;
}

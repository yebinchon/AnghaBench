
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_vif {int sta_list; } ;
struct wcn36xx_sta {int aid; int list; struct wcn36xx_vif* vif; int ampdu_lock; } ;
struct wcn36xx {int conf_mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int aid; int addr; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;
 int WCN36XX_BAND (struct wcn36xx*) ;
 int WCN36XX_DBG_MAC ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;
 int wcn36xx_dbg (int ,char*,struct ieee80211_vif*,int ) ;
 int wcn36xx_smd_config_sta (struct wcn36xx*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 struct wcn36xx_sta* wcn36xx_sta_to_priv (struct ieee80211_sta*) ;
 int wcn36xx_update_allowed_rates (struct ieee80211_sta*,int ) ;
 struct wcn36xx_vif* wcn36xx_vif_to_priv (struct ieee80211_vif*) ;

__attribute__((used)) static int wcn36xx_sta_add(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
      struct ieee80211_sta *sta)
{
 struct wcn36xx *wcn = hw->priv;
 struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);
 struct wcn36xx_sta *sta_priv = wcn36xx_sta_to_priv(sta);
 wcn36xx_dbg(WCN36XX_DBG_MAC, "mac sta add vif %p sta %pM\n",
      vif, sta->addr);

 mutex_lock(&wcn->conf_mutex);

 spin_lock_init(&sta_priv->ampdu_lock);
 sta_priv->vif = vif_priv;
 list_add(&sta_priv->list, &vif_priv->sta_list);





 if (NL80211_IFTYPE_STATION != vif->type) {
  wcn36xx_update_allowed_rates(sta, WCN36XX_BAND(wcn));
  sta_priv->aid = sta->aid;
  wcn36xx_smd_config_sta(wcn, vif, sta);
 }

 mutex_unlock(&wcn->conf_mutex);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_vif {int list; int sta_list; int bss_index; } ;
struct wcn36xx {int conf_mutex; int vif_list; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;


 int EOPNOTSUPP ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int WCN36XX_DBG_MAC ;
 int WCN36XX_HAL_BSS_INVALID_IDX ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,struct ieee80211_vif*,scalar_t__) ;
 int wcn36xx_smd_add_sta_self (struct wcn36xx*,struct ieee80211_vif*) ;
 struct wcn36xx_vif* wcn36xx_vif_to_priv (struct ieee80211_vif*) ;
 int wcn36xx_warn (char*,scalar_t__) ;

__attribute__((used)) static int wcn36xx_add_interface(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif)
{
 struct wcn36xx *wcn = hw->priv;
 struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);

 wcn36xx_dbg(WCN36XX_DBG_MAC, "mac add interface vif %p type %d\n",
      vif, vif->type);

 if (!(NL80211_IFTYPE_STATION == vif->type ||
       NL80211_IFTYPE_AP == vif->type ||
       NL80211_IFTYPE_ADHOC == vif->type ||
       NL80211_IFTYPE_MESH_POINT == vif->type)) {
  wcn36xx_warn("Unsupported interface type requested: %d\n",
        vif->type);
  return -EOPNOTSUPP;
 }

 mutex_lock(&wcn->conf_mutex);

 vif_priv->bss_index = WCN36XX_HAL_BSS_INVALID_IDX;
 INIT_LIST_HEAD(&vif_priv->sta_list);
 list_add(&vif_priv->list, &wcn->vif_list);
 wcn36xx_smd_add_sta_self(wcn, vif);

 mutex_unlock(&wcn->conf_mutex);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_sta {int * vif; int sta_index; int list; } ;
struct wcn36xx {int conf_mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;


 int WCN36XX_DBG_MAC ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,struct ieee80211_vif*,int ,int ) ;
 int wcn36xx_smd_delete_sta (struct wcn36xx*,int ) ;
 struct wcn36xx_sta* wcn36xx_sta_to_priv (struct ieee80211_sta*) ;

__attribute__((used)) static int wcn36xx_sta_remove(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_sta *sta)
{
 struct wcn36xx *wcn = hw->priv;
 struct wcn36xx_sta *sta_priv = wcn36xx_sta_to_priv(sta);

 wcn36xx_dbg(WCN36XX_DBG_MAC, "mac sta remove vif %p sta %pM index %d\n",
      vif, sta->addr, sta_priv->sta_index);

 mutex_lock(&wcn->conf_mutex);

 list_del(&sta_priv->list);
 wcn36xx_smd_delete_sta(wcn, sta_priv->sta_index);
 sta_priv->vif = ((void*)0);

 mutex_unlock(&wcn->conf_mutex);

 return 0;
}

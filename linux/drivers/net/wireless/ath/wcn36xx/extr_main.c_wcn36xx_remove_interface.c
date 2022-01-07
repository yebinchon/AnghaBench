
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_vif {int list; } ;
struct wcn36xx {int conf_mutex; } ;
struct ieee80211_vif {int addr; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;


 int WCN36XX_DBG_MAC ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,struct ieee80211_vif*) ;
 int wcn36xx_smd_delete_sta_self (struct wcn36xx*,int ) ;
 struct wcn36xx_vif* wcn36xx_vif_to_priv (struct ieee80211_vif*) ;

__attribute__((used)) static void wcn36xx_remove_interface(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif)
{
 struct wcn36xx *wcn = hw->priv;
 struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);
 wcn36xx_dbg(WCN36XX_DBG_MAC, "mac remove interface vif %p\n", vif);

 mutex_lock(&wcn->conf_mutex);

 list_del(&vif_priv->list);
 wcn36xx_smd_delete_sta_self(wcn, vif->addr);

 mutex_unlock(&wcn->conf_mutex);
}

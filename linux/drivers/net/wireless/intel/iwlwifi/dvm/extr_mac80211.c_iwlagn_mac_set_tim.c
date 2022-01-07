
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int beacon_update; int workqueue; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int iwlagn_mac_set_tim(struct ieee80211_hw *hw,
         struct ieee80211_sta *sta, bool set)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);

 queue_work(priv->workqueue, &priv->beacon_update);

 return 0;
}

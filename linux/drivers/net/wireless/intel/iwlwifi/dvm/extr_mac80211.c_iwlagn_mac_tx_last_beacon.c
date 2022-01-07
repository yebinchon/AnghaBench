
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {scalar_t__ ibss_manager; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ IWL_IBSS_MANAGER ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;

__attribute__((used)) static int iwlagn_mac_tx_last_beacon(struct ieee80211_hw *hw)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);

 return priv->ibss_manager == IWL_IBSS_MANAGER;
}

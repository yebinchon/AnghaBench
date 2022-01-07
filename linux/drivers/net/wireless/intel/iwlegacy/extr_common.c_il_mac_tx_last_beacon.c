
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {scalar_t__ ibss_manager; } ;
struct ieee80211_hw {struct il_priv* priv; } ;


 int D_MAC80211 (char*,...) ;
 scalar_t__ IL_IBSS_MANAGER ;

int
il_mac_tx_last_beacon(struct ieee80211_hw *hw)
{
 struct il_priv *il = hw->priv;
 int ret;

 D_MAC80211("enter\n");

 ret = (il->ibss_manager == IL_IBSS_MANAGER);

 D_MAC80211("leave ret %d\n", ret);
 return ret;
}

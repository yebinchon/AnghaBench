
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_channel_switch {int dummy; } ;


 int IWL_DEBUG_MAC80211 (int ,char*) ;
 int IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;

__attribute__((used)) static void iwl_mvm_channel_switch(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       struct ieee80211_channel_switch *chsw)
{






 IWL_DEBUG_MAC80211(IWL_MAC80211_GET_MVM(hw),
      "dummy channel switch op\n");
}

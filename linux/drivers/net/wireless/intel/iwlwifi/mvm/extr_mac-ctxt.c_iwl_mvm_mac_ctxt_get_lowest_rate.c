
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {scalar_t__ p2p; } ;
struct ieee80211_tx_info {scalar_t__ band; } ;


 int IWL_FIRST_CCK_RATE ;
 int IWL_FIRST_OFDM_RATE ;
 scalar_t__ NL80211_BAND_5GHZ ;

u8 iwl_mvm_mac_ctxt_get_lowest_rate(struct ieee80211_tx_info *info,
        struct ieee80211_vif *vif)
{
 u8 rate;

 if (info->band == NL80211_BAND_5GHZ || vif->p2p)
  rate = IWL_FIRST_OFDM_RATE;
 else
  rate = IWL_FIRST_CCK_RATE;

 return rate;
}

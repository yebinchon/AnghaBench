
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_rx_status {scalar_t__ mactime; } ;
struct TYPE_3__ {int timestamp; int capab_info; } ;
struct TYPE_4__ {TYPE_1__ beacon; } ;
struct ieee80211_mgmt {TYPE_2__ u; } ;
struct ath5k_hw {scalar_t__ nexttbtt; int bintval; } ;


 int ATH5K_DBG_UNLIMIT (struct ath5k_hw*,int ,char*,...) ;
 int ATH5K_DEBUG_BEACON ;
 scalar_t__ TSF_TO_TU (scalar_t__) ;
 int WLAN_CAPABILITY_IBSS ;
 int ath5k_beacon_update_timers (struct ath5k_hw*,scalar_t__) ;
 int ath5k_hw_check_beacon_timers (struct ath5k_hw*,int ) ;
 scalar_t__ ath5k_hw_get_tsf64 (struct ath5k_hw*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static void
ath5k_check_ibss_tsf(struct ath5k_hw *ah, struct sk_buff *skb,
       struct ieee80211_rx_status *rxs)
{
 u64 tsf, bc_tstamp;
 u32 hw_tu;
 struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)skb->data;

 if (le16_to_cpu(mgmt->u.beacon.capab_info) & WLAN_CAPABILITY_IBSS) {





  tsf = ath5k_hw_get_tsf64(ah);
  bc_tstamp = le64_to_cpu(mgmt->u.beacon.timestamp);
  hw_tu = TSF_TO_TU(tsf);

  ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_BEACON,
   "beacon %llx mactime %llx (diff %lld) tsf now %llx\n",
   (unsigned long long)bc_tstamp,
   (unsigned long long)rxs->mactime,
   (unsigned long long)(rxs->mactime - bc_tstamp),
   (unsigned long long)tsf);
  if (bc_tstamp > rxs->mactime) {
   ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_BEACON,
    "fixing mactime from %llx to %llx\n",
    (unsigned long long)rxs->mactime,
    (unsigned long long)tsf);
   rxs->mactime = tsf;
  }







  if (hw_tu >= ah->nexttbtt)
   ath5k_beacon_update_timers(ah, bc_tstamp);




  if (!ath5k_hw_check_beacon_timers(ah, ah->bintval)) {
   ath5k_beacon_update_timers(ah, bc_tstamp);
   ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_BEACON,
    "fixed beacon timers after beacon receive\n");
  }
 }
}

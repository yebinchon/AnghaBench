
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm {int bt_tx_prio; } ;
struct ieee80211_tx_info {scalar_t__ band; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
typedef int __le16 ;





 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ ieee80211_is_ctl (int ) ;
 int ieee80211_is_data (int ) ;
 int ieee80211_is_data_qos (int ) ;
 scalar_t__ ieee80211_is_disassoc (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int iwl_mvm_is_mplut_supported (struct iwl_mvm*) ;
 scalar_t__ likely (int ) ;
 scalar_t__ unlikely (int) ;

u8 iwl_mvm_bt_coex_tx_prio(struct iwl_mvm *mvm, struct ieee80211_hdr *hdr,
      struct ieee80211_tx_info *info, u8 ac)
{
 __le16 fc = hdr->frame_control;
 bool mplut_enabled = iwl_mvm_is_mplut_supported(mvm);

 if (info->band != NL80211_BAND_2GHZ)
  return 0;

 if (unlikely(mvm->bt_tx_prio))
  return mvm->bt_tx_prio - 1;

 if (likely(ieee80211_is_data(fc))) {
  if (likely(ieee80211_is_data_qos(fc))) {
   switch (ac) {
   case 130:
    return mplut_enabled ? 1 : 0;
   case 129:
    return mplut_enabled ? 2 : 3;
   case 128:
    return 3;
   default:
    return 0;
   }
  } else if (is_multicast_ether_addr(hdr->addr1)) {
   return 3;
  } else
   return 0;
 } else if (ieee80211_is_mgmt(fc)) {
  return ieee80211_is_disassoc(fc) ? 0 : 3;
 } else if (ieee80211_is_ctl(fc)) {

  return 3;
 }

 return 0;
}

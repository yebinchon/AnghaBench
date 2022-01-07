
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int sta_id; } ;
struct iwl_mvm_vif {TYPE_1__ mcast_sta; } ;
struct iwl_mvm_sta {int sta_id; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int mfp; } ;
struct TYPE_4__ {int iv32; } ;
struct ieee80211_key_seq {TYPE_2__ tkip; } ;
struct ieee80211_key_conf {int flags; int cipher; } ;


 int EINVAL ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 scalar_t__ NL80211_IFTYPE_AP ;






 int ieee80211_get_key_rx_seq (struct ieee80211_key_conf*,int ,struct ieee80211_key_seq*) ;
 int ieee80211_get_tkip_rx_p1k (struct ieee80211_key_conf*,int const*,int ,int *) ;
 int * iwl_mvm_get_mac_addr (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int iwl_mvm_send_sta_key (struct iwl_mvm*,int ,struct ieee80211_key_conf*,int,int ,int *,int ,int ,int) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static int __iwl_mvm_set_sta_key(struct iwl_mvm *mvm,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta,
     struct ieee80211_key_conf *keyconf,
     u8 key_offset,
     bool mcast)
{
 int ret;
 const u8 *addr;
 struct ieee80211_key_seq seq;
 u16 p1k[5];
 u32 sta_id;
 bool mfp = 0;

 if (sta) {
  struct iwl_mvm_sta *mvm_sta = iwl_mvm_sta_from_mac80211(sta);

  sta_id = mvm_sta->sta_id;
  mfp = sta->mfp;
 } else if (vif->type == NL80211_IFTYPE_AP &&
     !(keyconf->flags & IEEE80211_KEY_FLAG_PAIRWISE)) {
  struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

  sta_id = mvmvif->mcast_sta.sta_id;
 } else {
  IWL_ERR(mvm, "Failed to find station id\n");
  return -EINVAL;
 }

 switch (keyconf->cipher) {
 case 130:
  addr = iwl_mvm_get_mac_addr(mvm, vif, sta);

  ieee80211_get_key_rx_seq(keyconf, 0, &seq);
  ieee80211_get_tkip_rx_p1k(keyconf, addr, seq.tkip.iv32, p1k);
  ret = iwl_mvm_send_sta_key(mvm, sta_id, keyconf, mcast,
        seq.tkip.iv32, p1k, 0, key_offset,
        mfp);
  break;
 case 133:
 case 128:
 case 129:
 case 132:
 case 131:
  ret = iwl_mvm_send_sta_key(mvm, sta_id, keyconf, mcast,
        0, ((void*)0), 0, key_offset, mfp);
  break;
 default:
  ret = iwl_mvm_send_sta_key(mvm, sta_id, keyconf, mcast,
        0, ((void*)0), 0, key_offset, mfp);
 }

 return ret;
}

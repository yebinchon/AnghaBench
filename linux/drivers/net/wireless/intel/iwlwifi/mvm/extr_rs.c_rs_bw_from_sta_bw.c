
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vht_cap {int supp_mcs; int vht_cap_info; } ;
struct ieee80211_sta_vht_cap {int vht_mcs; int cap; } ;
struct ieee80211_sta {int bandwidth; int rx_nss; struct ieee80211_sta_vht_cap vht_cap; } ;






 int IEEE80211_VHT_CHANWIDTH_160MHZ ;
 int RATE_MCS_CHAN_WIDTH_160 ;
 int RATE_MCS_CHAN_WIDTH_20 ;
 int RATE_MCS_CHAN_WIDTH_40 ;
 int RATE_MCS_CHAN_WIDTH_80 ;
 int cpu_to_le32 (int ) ;
 int ieee80211_get_vht_max_nss (struct ieee80211_vht_cap*,int ,int ,int) ;

__attribute__((used)) static u32 rs_bw_from_sta_bw(struct ieee80211_sta *sta)
{
 struct ieee80211_sta_vht_cap *sta_vht_cap = &sta->vht_cap;
 struct ieee80211_vht_cap vht_cap = {
  .vht_cap_info = cpu_to_le32(sta_vht_cap->cap),
  .supp_mcs = sta_vht_cap->vht_mcs,
 };

 switch (sta->bandwidth) {
 case 131:
  if (ieee80211_get_vht_max_nss(&vht_cap,
           IEEE80211_VHT_CHANWIDTH_160MHZ,
           0, 1) < sta->rx_nss)
   return RATE_MCS_CHAN_WIDTH_80;
  return RATE_MCS_CHAN_WIDTH_160;
 case 128:
  return RATE_MCS_CHAN_WIDTH_80;
 case 129:
  return RATE_MCS_CHAN_WIDTH_40;
 case 130:
 default:
  return RATE_MCS_CHAN_WIDTH_20;
 }
}

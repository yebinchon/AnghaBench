
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_sta_vht_cap {int cap; scalar_t__ vht_supported; } ;
struct ieee80211_sta_ht_cap {int cap; scalar_t__ ht_supported; } ;
struct ieee80211_sta {struct ieee80211_sta_ht_cap ht_cap; struct ieee80211_sta_vht_cap vht_cap; } ;


 int IEEE80211_HT_CAP_MAX_AMSDU ;
 int IEEE80211_MAX_MPDU_LEN_HT_3839 ;
 int IEEE80211_MAX_MPDU_LEN_HT_BA ;
 int IEEE80211_MAX_MPDU_LEN_VHT_11454 ;
 int IEEE80211_MAX_MPDU_LEN_VHT_3895 ;
 int IEEE80211_MAX_MPDU_LEN_VHT_7991 ;


 int IEEE80211_VHT_CAP_MAX_MPDU_MASK ;

__attribute__((used)) static u16 rs_fw_get_max_amsdu_len(struct ieee80211_sta *sta)
{
 const struct ieee80211_sta_vht_cap *vht_cap = &sta->vht_cap;
 const struct ieee80211_sta_ht_cap *ht_cap = &sta->ht_cap;

 if (vht_cap->vht_supported) {
  switch (vht_cap->cap & IEEE80211_VHT_CAP_MAX_MPDU_MASK) {
  case 129:
   return IEEE80211_MAX_MPDU_LEN_VHT_11454;
  case 128:
   return IEEE80211_MAX_MPDU_LEN_VHT_7991;
  default:
   return IEEE80211_MAX_MPDU_LEN_VHT_3895;
 }

 } else if (ht_cap->ht_supported) {
  if (ht_cap->cap & IEEE80211_HT_CAP_MAX_AMSDU)





   return IEEE80211_MAX_MPDU_LEN_HT_BA;
  else
   return IEEE80211_MAX_MPDU_LEN_HT_3839;
 }


 return 0;
}

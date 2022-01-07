
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tsc ;
struct ath6kl_vif {scalar_t__ nw_type; int ndev; struct ath6kl* ar; } ;
struct ath6kl_sta {int mac; } ;
struct ath6kl {int dummy; } ;


 scalar_t__ AP_NETWORK ;
 int ATH6KL_DBG_TRC ;
 int GFP_KERNEL ;
 int NL80211_KEYTYPE_PAIRWISE ;
 int ath6kl_cfg80211_tkip_micerr_event (struct ath6kl_vif*,int,int) ;
 int ath6kl_dbg (int ,char*,int) ;
 struct ath6kl_sta* ath6kl_find_sta_by_aid (struct ath6kl*,int) ;
 int cfg80211_michael_mic_failure (int ,int ,int ,int,int*,int ) ;
 int memset (int*,int ,int) ;

void ath6kl_tkip_micerr_event(struct ath6kl_vif *vif, u8 keyid, bool ismcast)
{
 struct ath6kl_sta *sta;
 struct ath6kl *ar = vif->ar;
 u8 tsc[6];





 if (vif->nw_type == AP_NETWORK) {
  sta = ath6kl_find_sta_by_aid(ar, (keyid >> 2));
  if (!sta)
   return;

  ath6kl_dbg(ATH6KL_DBG_TRC,
      "ap tkip mic error received from aid=%d\n", keyid);

  memset(tsc, 0, sizeof(tsc));
  cfg80211_michael_mic_failure(vif->ndev, sta->mac,
          NL80211_KEYTYPE_PAIRWISE, keyid,
          tsc, GFP_KERNEL);
 } else {
  ath6kl_cfg80211_tkip_micerr_event(vif, keyid, ismcast);
 }
}

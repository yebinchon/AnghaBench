
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int IEEE80211_VHT_MCS_NOT_SUPPORTED ;
 int IEEE80211_VHT_MCS_SUPPORT_0_7 ;
 int IEEE80211_VHT_MCS_SUPPORT_0_8 ;
 int IEEE80211_VHT_MCS_SUPPORT_0_9 ;
 int NL80211_VHT_NSS_MAX ;
 int WARN_ON (int) ;
 int const ath10k_mac_get_max_vht_mcs_map (int,int) ;
 int fls (int) ;

__attribute__((used)) static u16
ath10k_peer_assoc_h_vht_limit(u16 tx_mcs_set,
         const u16 vht_mcs_limit[NL80211_VHT_NSS_MAX])
{
 int idx_limit;
 int nss;
 u16 mcs_map;
 u16 mcs;

 for (nss = 0; nss < NL80211_VHT_NSS_MAX; nss++) {
  mcs_map = ath10k_mac_get_max_vht_mcs_map(tx_mcs_set, nss) &
     vht_mcs_limit[nss];

  if (mcs_map)
   idx_limit = fls(mcs_map) - 1;
  else
   idx_limit = -1;

  switch (idx_limit) {
  case 0:
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
  case 6:
  default:

   WARN_ON(1);

  case -1:
   mcs = IEEE80211_VHT_MCS_NOT_SUPPORTED;
   break;
  case 7:
   mcs = IEEE80211_VHT_MCS_SUPPORT_0_7;
   break;
  case 8:
   mcs = IEEE80211_VHT_MCS_SUPPORT_0_8;
   break;
  case 9:
   mcs = IEEE80211_VHT_MCS_SUPPORT_0_9;
   break;
  }

  tx_mcs_set &= ~(0x3 << (nss * 2));
  tx_mcs_set |= mcs << (nss * 2);
 }

 return tx_mcs_set;
}

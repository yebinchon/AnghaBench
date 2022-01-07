
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 int NL80211_VHT_NSS_MAX ;

__attribute__((used)) static bool
ath10k_peer_assoc_h_vht_masked(const u16 vht_mcs_mask[NL80211_VHT_NSS_MAX])
{
 int nss;

 for (nss = 0; nss < NL80211_VHT_NSS_MAX; nss++)
  if (vht_mcs_mask[nss])
   return 0;

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 int NL80211_VHT_NSS_MAX ;

__attribute__((used)) static u32
ath10k_mac_max_vht_nss(const u16 vht_mcs_mask[NL80211_VHT_NSS_MAX])
{
 int nss;

 for (nss = NL80211_VHT_NSS_MAX - 1; nss >= 0; nss--)
  if (vht_mcs_mask[nss])
   return nss + 1;

 return 1;
}

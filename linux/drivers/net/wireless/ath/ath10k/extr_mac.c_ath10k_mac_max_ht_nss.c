
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 int IEEE80211_HT_MCS_MASK_LEN ;

__attribute__((used)) static u32
ath10k_mac_max_ht_nss(const u8 ht_mcs_mask[IEEE80211_HT_MCS_MASK_LEN])
{
 int nss;

 for (nss = IEEE80211_HT_MCS_MASK_LEN - 1; nss >= 0; nss--)
  if (ht_mcs_mask[nss])
   return nss + 1;

 return 1;
}

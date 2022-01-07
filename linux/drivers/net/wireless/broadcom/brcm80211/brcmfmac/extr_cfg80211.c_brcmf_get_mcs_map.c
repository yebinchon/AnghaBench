
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef enum ieee80211_vht_mcs_support { ____Placeholder_ieee80211_vht_mcs_support } ieee80211_vht_mcs_support ;
typedef int __le16 ;


 int cpu_to_le16 (int) ;

__attribute__((used)) static __le16 brcmf_get_mcs_map(u32 nchain, enum ieee80211_vht_mcs_support supp)
{
 u16 mcs_map;
 int i;

 for (i = 0, mcs_map = 0xFFFF; i < nchain; i++)
  mcs_map = (mcs_map << 2) | supp;

 return cpu_to_le16(mcs_map);
}

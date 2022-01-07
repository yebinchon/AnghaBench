
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
typedef int __le32 ;


 int NL80211_BAND_2GHZ ;
 int PHY_BAND_24 ;
 int PHY_BAND_5 ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static __le32 iwl_mvm_scan_rxon_flags(enum nl80211_band band)
{
 if (band == NL80211_BAND_2GHZ)
  return cpu_to_le32(PHY_BAND_24);
 else
  return cpu_to_le32(PHY_BAND_5);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int IWL_FIRST_OFDM_RATE ;
 int IWL_RATE_COUNT_LEGACY ;
 int NL80211_BAND_5GHZ ;
 int RATE_LEGACY_RATE_MSK ;
 int* fw_rate_idx_to_plcp ;

int iwl_mvm_legacy_rate_to_mac80211_idx(u32 rate_n_flags,
     enum nl80211_band band)
{
 int rate = rate_n_flags & RATE_LEGACY_RATE_MSK;
 int idx;
 int band_offset = 0;


 if (band == NL80211_BAND_5GHZ)
  band_offset = IWL_FIRST_OFDM_RATE;
 for (idx = band_offset; idx < IWL_RATE_COUNT_LEGACY; idx++)
  if (fw_rate_idx_to_plcp[idx] == rate)
   return idx - band_offset;

 return -1;
}

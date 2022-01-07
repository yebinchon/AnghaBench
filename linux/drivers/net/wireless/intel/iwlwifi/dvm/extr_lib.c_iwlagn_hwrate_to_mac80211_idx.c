
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_2__ {int plcp; } ;


 int IWL_FIRST_OFDM_RATE ;
 int IWL_RATE_COUNT_LEGACY ;
 int NL80211_BAND_5GHZ ;
 int RATE_MCS_HT_MSK ;
 TYPE_1__* iwl_rates ;

int iwlagn_hwrate_to_mac80211_idx(u32 rate_n_flags, enum nl80211_band band)
{
 int idx = 0;
 int band_offset = 0;


 if (rate_n_flags & RATE_MCS_HT_MSK) {
  idx = (rate_n_flags & 0xff);
  return idx;

 } else {
  if (band == NL80211_BAND_5GHZ)
   band_offset = IWL_FIRST_OFDM_RATE;
  for (idx = band_offset; idx < IWL_RATE_COUNT_LEGACY; idx++)
   if (iwl_rates[idx].plcp == (rate_n_flags & 0xFF))
    return idx - band_offset;
 }

 return -1;
}

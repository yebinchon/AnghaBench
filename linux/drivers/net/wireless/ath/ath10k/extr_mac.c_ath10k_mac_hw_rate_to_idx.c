
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rate {scalar_t__ hw_value; int flags; scalar_t__ hw_value_short; int bitrate; } ;


 int IEEE80211_RATE_SHORT_PREAMBLE ;
 int ath10k_mac_bitrate_is_cck (int ) ;

u8 ath10k_mac_hw_rate_to_idx(const struct ieee80211_supported_band *sband,
        u8 hw_rate, bool cck)
{
 const struct ieee80211_rate *rate;
 int i;

 for (i = 0; i < sband->n_bitrates; i++) {
  rate = &sband->bitrates[i];

  if (ath10k_mac_bitrate_is_cck(rate->bitrate) != cck)
   continue;

  if (rate->hw_value == hw_rate)
   return i;
  else if (rate->flags & IEEE80211_RATE_SHORT_PREAMBLE &&
    rate->hw_value_short == hw_rate)
   return i;
 }

 return 0;
}

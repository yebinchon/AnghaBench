
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ieee80211_channel {scalar_t__ center_freq; scalar_t__ band; } ;
struct TYPE_3__ {scalar_t__ range_2ghz_min; scalar_t__ range_2ghz_max; scalar_t__ range_5ghz_min; scalar_t__ range_5ghz_max; } ;
struct TYPE_4__ {TYPE_1__ cap_range; } ;
struct ath5k_hw {TYPE_2__ ah_capabilities; } ;


 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ NL80211_BAND_5GHZ ;

bool
ath5k_channel_ok(struct ath5k_hw *ah, struct ieee80211_channel *channel)
{
 u16 freq = channel->center_freq;


 if (channel->band == NL80211_BAND_2GHZ) {
  if ((freq >= ah->ah_capabilities.cap_range.range_2ghz_min) &&
      (freq <= ah->ah_capabilities.cap_range.range_2ghz_max))
   return 1;
 } else if (channel->band == NL80211_BAND_5GHZ)
  if ((freq >= ah->ah_capabilities.cap_range.range_5ghz_min) &&
      (freq <= ah->ah_capabilities.cap_range.range_5ghz_max))
   return 1;

 return 0;
}

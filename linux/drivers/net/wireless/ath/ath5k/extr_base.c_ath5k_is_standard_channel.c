
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int NL80211_BAND_2GHZ ;

__attribute__((used)) static bool ath5k_is_standard_channel(short chan, enum nl80211_band band)
{
 if (band == NL80211_BAND_2GHZ && chan <= 14)
  return 1;

 return
  (((chan & 3) == 0 && chan >= 36 && chan <= 64) ||

  ((chan & 3) == 0 && chan >= 100 && chan <= 140) ||

  ((chan & 3) == 1 && chan >= 149 && chan <= 165) ||

  (chan == 8 || chan == 12 || chan == 16) ||

  (chan == 184 || chan == 188 || chan == 192 || chan == 196));
}

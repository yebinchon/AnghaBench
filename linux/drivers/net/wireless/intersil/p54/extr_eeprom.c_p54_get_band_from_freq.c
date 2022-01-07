
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;

__attribute__((used)) static int p54_get_band_from_freq(u16 freq)
{


 if ((freq >= 2412) && (freq <= 2484))
  return NL80211_BAND_2GHZ;

 if ((freq >= 4920) && (freq <= 5825))
  return NL80211_BAND_5GHZ;

 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;




 int WARN_ON (int) ;
 int WLC_BAND_2G ;
 int WLC_BAND_5G ;

__attribute__((used)) static u8 nl80211_band_to_fwil(enum nl80211_band band)
{
 switch (band) {
 case 129:
  return WLC_BAND_2G;
 case 128:
  return WLC_BAND_5G;
 default:
  WARN_ON(1);
  break;
 }
 return 0;
}

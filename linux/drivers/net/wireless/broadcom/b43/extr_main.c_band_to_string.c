
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int B43_WARN_ON (int) ;



__attribute__((used)) static const char *band_to_string(enum nl80211_band band)
{
 switch (band) {
 case 128:
  return "5";
 case 129:
  return "2.4";
 default:
  break;
 }
 B43_WARN_ON(1);
 return "";
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int BIT (int) ;
 int EXT_BSSID_1 ;
 int EXT_BSSID_END ;
 int HW_BSSID_0 ;
 int HW_BSSID_1 ;
 int HW_BSSID_MAX ;



 int WARN_ON (int) ;

__attribute__((used)) static int get_omac_idx(enum nl80211_iftype type, u32 mask)
{
 int i;

 switch (type) {
 case 130:
 case 129:

  if (~mask & BIT(HW_BSSID_0))
   return HW_BSSID_0;

  for (i = EXT_BSSID_1; i < EXT_BSSID_END; i++)
   if (~mask & BIT(i))
    return i;

  break;
 case 128:

  for (i = HW_BSSID_1; i < HW_BSSID_MAX; i++)
   if (~mask & BIT(i))
    return i;

  break;
 default:
  WARN_ON(1);
  break;
 };

 return -1;
}

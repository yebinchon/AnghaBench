
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ieee80211_vendor_ie {int* oui; int oui_type; } ;


 int const WLAN_EID_VENDOR_SPECIFIC ;
 int const* cfg80211_find_ie (int const,int const*,int) ;
 int const* cfg80211_find_vendor_ie (int,int ,int const*,int) ;

__attribute__((used)) static const u8 *_wil_cfg80211_find_ie(const u8 *ies, u16 ies_len, const u8 *ie,
           u16 ie_len)
{
 struct ieee80211_vendor_ie *vie;
 u32 oui;


 if (ie_len < 2 || 2 + ie[1] > ie_len)
  return ((void*)0);

 if (ie[0] != WLAN_EID_VENDOR_SPECIFIC)
  return cfg80211_find_ie(ie[0], ies, ies_len);


 if (ie[1] < 4)
  return ((void*)0);
 vie = (struct ieee80211_vendor_ie *)ie;
 oui = vie->oui[0] << 16 | vie->oui[1] << 8 | vie->oui[2];
 return cfg80211_find_vendor_ie(oui, vie->oui_type, ies,
           ies_len);
}

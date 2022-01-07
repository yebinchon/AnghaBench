
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int NL80211_IFTYPE_P2P_CLIENT ;
 int NL80211_IFTYPE_STATION ;

__attribute__((used)) static bool wil_is_safe_switch(enum nl80211_iftype from,
          enum nl80211_iftype to)
{
 if (from == NL80211_IFTYPE_STATION &&
     to == NL80211_IFTYPE_P2P_CLIENT)
  return 1;

 return 0;
}

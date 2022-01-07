
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_station_priv_common {int sta_id; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;


 int IL_INVALID_STATION ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static inline int
il_sta_id(struct ieee80211_sta *sta)
{
 if (WARN_ON(!sta))
  return IL_INVALID_STATION;

 return ((struct il_station_priv_common *)sta->drv_priv)->sta_id;
}

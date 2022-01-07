
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfg80211_wowlan {scalar_t__ n_patterns; scalar_t__ magic_pkt; scalar_t__ disconnect; } ;
struct ath_softc {int dummy; } ;


 int AH_WOW_BEACON_MISS ;
 int AH_WOW_LINK_CHANGE ;
 int AH_WOW_MAGIC_PATTERN_EN ;
 int AH_WOW_USER_PATTERN_EN ;

__attribute__((used)) static u8 ath9k_wow_map_triggers(struct ath_softc *sc,
     struct cfg80211_wowlan *wowlan)
{
 u8 wow_triggers = 0;

 if (wowlan->disconnect)
  wow_triggers |= AH_WOW_LINK_CHANGE |
    AH_WOW_BEACON_MISS;
 if (wowlan->magic_pkt)
  wow_triggers |= AH_WOW_MAGIC_PATTERN_EN;

 if (wowlan->n_patterns)
  wow_triggers |= AH_WOW_USER_PATTERN_EN;

 return wow_triggers;
}

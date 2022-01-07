
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wcn36xx_sta {int sta_index; int bss_sta_index; } ;
struct ieee80211_vif {scalar_t__ type; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;

__attribute__((used)) static inline u8 get_sta_index(struct ieee80211_vif *vif,
          struct wcn36xx_sta *sta_priv)
{
 return NL80211_IFTYPE_STATION == vif->type ?
        sta_priv->bss_sta_index :
        sta_priv->sta_index;
}

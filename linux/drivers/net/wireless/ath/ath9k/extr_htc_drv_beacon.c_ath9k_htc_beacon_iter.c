
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ath9k_htc_vif {scalar_t__ beacon_configured; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;

__attribute__((used)) static void ath9k_htc_beacon_iter(void *data, u8 *mac, struct ieee80211_vif *vif)
{
 bool *beacon_configured = data;
 struct ath9k_htc_vif *avp = (struct ath9k_htc_vif *) vif->drv_priv;

 if (vif->type == NL80211_IFTYPE_STATION &&
     avp->beacon_configured)
  *beacon_configured = 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {scalar_t__ csa_active; } ;


 int ieee80211_csa_finish (struct ieee80211_vif*) ;

__attribute__((used)) static void
mt7615_mcu_csa_finish(void *priv, u8 *mac, struct ieee80211_vif *vif)
{
 if (vif->csa_active)
  ieee80211_csa_finish(vif);
}

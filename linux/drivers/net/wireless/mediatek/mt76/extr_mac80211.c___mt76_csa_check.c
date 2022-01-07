
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt76_dev {int csa_complete; } ;
struct ieee80211_vif {int csa_active; } ;


 int ieee80211_csa_is_complete (struct ieee80211_vif*) ;

__attribute__((used)) static void
__mt76_csa_check(void *priv, u8 *mac, struct ieee80211_vif *vif)
{
 struct mt76_dev *dev = priv;

 if (!vif->csa_active)
  return;

 dev->csa_complete |= ieee80211_csa_is_complete(vif);
}

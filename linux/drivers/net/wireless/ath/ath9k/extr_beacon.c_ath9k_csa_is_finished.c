
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int csa_active; } ;
struct ath_softc {int dummy; } ;


 int ieee80211_csa_finish (struct ieee80211_vif*) ;
 int ieee80211_csa_is_complete (struct ieee80211_vif*) ;

bool ath9k_csa_is_finished(struct ath_softc *sc, struct ieee80211_vif *vif)
{
 if (!vif || !vif->csa_active)
  return 0;

 if (!ieee80211_csa_is_complete(vif))
  return 0;

 ieee80211_csa_finish(vif);
 return 1;
}

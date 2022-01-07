
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int hw; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ath9k_csa_update_vif ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct ath_softc*) ;

void ath9k_csa_update(struct ath_softc *sc)
{
 ieee80211_iterate_active_interfaces_atomic(sc->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         ath9k_csa_update_vif, sc);
}

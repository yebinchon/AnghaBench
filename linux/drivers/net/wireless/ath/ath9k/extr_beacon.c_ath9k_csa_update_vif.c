
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int dummy; } ;
struct ath_softc {int dummy; } ;


 int ath9k_csa_is_finished (struct ath_softc*,struct ieee80211_vif*) ;

__attribute__((used)) static void ath9k_csa_update_vif(void *data, u8 *mac, struct ieee80211_vif *vif)
{
 struct ath_softc *sc = data;
 ath9k_csa_is_finished(sc, vif);
}

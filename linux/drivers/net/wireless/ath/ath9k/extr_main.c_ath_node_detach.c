
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ath_softc {int sc_ah; } ;
struct ath_node {int dummy; } ;


 int ath_dynack_node_deinit (int ,struct ath_node*) ;
 int ath_tx_node_cleanup (struct ath_softc*,struct ath_node*) ;

__attribute__((used)) static void ath_node_detach(struct ath_softc *sc, struct ieee80211_sta *sta)
{
 struct ath_node *an = (struct ath_node *)sta->drv_priv;
 ath_tx_node_cleanup(sc, an);

 ath_dynack_node_deinit(sc->sc_ah, an);
}

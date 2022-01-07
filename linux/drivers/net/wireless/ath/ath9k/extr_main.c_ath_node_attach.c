
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ath_softc {int sc_ah; } ;
struct ath_node {int key_idx; struct ieee80211_vif* vif; struct ieee80211_sta* sta; struct ath_softc* sc; } ;


 int ath_dynack_node_init (int ,struct ath_node*) ;
 int ath_tx_node_init (struct ath_softc*,struct ath_node*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void ath_node_attach(struct ath_softc *sc, struct ieee80211_sta *sta,
       struct ieee80211_vif *vif)
{
 struct ath_node *an;
 an = (struct ath_node *)sta->drv_priv;

 an->sc = sc;
 an->sta = sta;
 an->vif = vif;
 memset(&an->key_idx, 0, sizeof(an->key_idx));

 ath_tx_node_init(sc, an);

 ath_dynack_node_init(sc->sc_ah, an);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_txq {int axq_qnum; } ;
struct TYPE_4__ {int beaconq; } ;
struct TYPE_3__ {struct ath_txq** txq_map; } ;
struct ath_softc {TYPE_2__ beacon; TYPE_1__ tx; struct ath_hw* sc_ah; } ;
struct ath_hw {scalar_t__ opmode; int slottime; } ;
struct ath_common {int dummy; } ;
struct ath9k_tx_queue_info {int tqi_aifs; int tqi_cwmin; scalar_t__ tqi_cwmax; } ;


 size_t IEEE80211_AC_BE ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_get_txq_props (struct ath_hw*,int ,struct ath9k_tx_queue_info*) ;
 int ath9k_hw_resettxqueue (struct ath_hw*,int ) ;
 int ath9k_hw_set_txq_props (struct ath_hw*,int ,struct ath9k_tx_queue_info*) ;
 int ath_err (struct ath_common*,char*) ;

__attribute__((used)) static void ath9k_beaconq_config(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_tx_queue_info qi, qi_be;
 struct ath_txq *txq;

 ath9k_hw_get_txq_props(ah, sc->beacon.beaconq, &qi);

 if (sc->sc_ah->opmode == NL80211_IFTYPE_AP ||
     sc->sc_ah->opmode == NL80211_IFTYPE_MESH_POINT) {

  qi.tqi_aifs = 1;
  qi.tqi_cwmin = 0;
  qi.tqi_cwmax = 0;
 } else {

  txq = sc->tx.txq_map[IEEE80211_AC_BE];
  ath9k_hw_get_txq_props(ah, txq->axq_qnum, &qi_be);
  qi.tqi_aifs = qi_be.tqi_aifs;
  if (ah->slottime == 20)
   qi.tqi_cwmin = 2*qi_be.tqi_cwmin;
  else
   qi.tqi_cwmin = 4*qi_be.tqi_cwmin;
  qi.tqi_cwmax = qi_be.tqi_cwmax;
 }

 if (!ath9k_hw_set_txq_props(ah, sc->beacon.beaconq, &qi)) {
  ath_err(common, "Unable to update h/w beacon queue parameters\n");
 } else {
  ath9k_hw_resettxqueue(ah, sc->beacon.beaconq);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {int type; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_vif {int chanctx; int mcast_node; int list; } ;
struct ath_softc {int mutex; int * tx99_vif; TYPE_1__* cur_chan; int sc_ah; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int nvifs; } ;


 int CONFIG ;
 int ath9k_beacon_remove_slot (struct ath_softc*,struct ieee80211_vif*) ;
 int ath9k_calculate_summary_state (struct ath_softc*,int ) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_is_chanctx_enabled () ;
 int ath9k_p2p_remove_vif (struct ath_softc*,struct ieee80211_vif*) ;
 int ath9k_set_txpower (struct ath_softc*,int *) ;
 scalar_t__ ath9k_uses_beacons (int ) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int ath_tx_node_cleanup (struct ath_softc*,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath9k_remove_interface(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct ath_softc *sc = hw->priv;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_vif *avp = (void *)vif->drv_priv;

 ath_dbg(common, CONFIG, "Detach Interface\n");

 mutex_lock(&sc->mutex);

 ath9k_p2p_remove_vif(sc, vif);

 sc->cur_chan->nvifs--;
 sc->tx99_vif = ((void*)0);
 if (!ath9k_is_chanctx_enabled())
  list_del(&avp->list);

 if (ath9k_uses_beacons(vif->type))
  ath9k_beacon_remove_slot(sc, vif);

 ath_tx_node_cleanup(sc, &avp->mcast_node);

 ath9k_calculate_summary_state(sc, avp->chanctx);

 ath9k_set_txpower(sc, ((void*)0));

 mutex_unlock(&sc->mutex);
}

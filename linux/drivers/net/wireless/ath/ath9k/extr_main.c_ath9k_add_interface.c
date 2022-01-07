
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ type; int driver_flags; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_node {int no_ps_filter; struct ieee80211_vif* vif; int * sta; struct ath_softc* sc; } ;
struct ath_vif {TYPE_1__* chanctx; int list; struct ieee80211_vif* vif; struct ath_node mcast_node; } ;
struct ath_softc {int mutex; TYPE_1__* cur_chan; struct ieee80211_vif* tx99_vif; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int nvifs; int vifs; } ;


 int CONFIG ;
 int CONFIG_ATH9K_TX99 ;
 int EOPNOTSUPP ;
 int IEEE80211_VIF_GET_NOA_UPDATE ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int ath9k_assign_hw_queues (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int ath9k_beacon_assign_slot (struct ath_softc*,struct ieee80211_vif*) ;
 int ath9k_calculate_summary_state (struct ath_softc*,TYPE_1__*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 scalar_t__ ath9k_is_chanctx_enabled () ;
 int ath9k_set_txpower (struct ath_softc*,struct ieee80211_vif*) ;
 scalar_t__ ath9k_uses_beacons (scalar_t__) ;
 int ath_dbg (struct ath_common*,int ,char*,scalar_t__) ;
 int ath_tx_node_init (struct ath_softc*,struct ath_node*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath9k_add_interface(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_vif *avp = (void *)vif->drv_priv;
 struct ath_node *an = &avp->mcast_node;

 mutex_lock(&sc->mutex);
 if (IS_ENABLED(CONFIG_ATH9K_TX99)) {
  if (sc->cur_chan->nvifs >= 1) {
   mutex_unlock(&sc->mutex);
   return -EOPNOTSUPP;
  }
  sc->tx99_vif = vif;
 }

 ath_dbg(common, CONFIG, "Attach a VIF of type: %d\n", vif->type);
 sc->cur_chan->nvifs++;

 if (vif->type == NL80211_IFTYPE_STATION && ath9k_is_chanctx_enabled())
  vif->driver_flags |= IEEE80211_VIF_GET_NOA_UPDATE;

 if (ath9k_uses_beacons(vif->type))
  ath9k_beacon_assign_slot(sc, vif);

 avp->vif = vif;
 if (!ath9k_is_chanctx_enabled()) {
  avp->chanctx = sc->cur_chan;
  list_add_tail(&avp->list, &avp->chanctx->vifs);
 }

 ath9k_calculate_summary_state(sc, avp->chanctx);

 ath9k_assign_hw_queues(hw, vif);

 ath9k_set_txpower(sc, vif);

 an->sc = sc;
 an->sta = ((void*)0);
 an->vif = vif;
 an->no_ps_filter = 1;
 ath_tx_node_init(sc, an);

 mutex_unlock(&sc->mutex);
 return 0;
}

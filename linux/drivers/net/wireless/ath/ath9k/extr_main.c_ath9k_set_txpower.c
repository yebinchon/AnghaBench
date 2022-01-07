
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int txpower; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ath_softc {TYPE_3__* cur_chan; TYPE_4__* hw; struct ath_hw* sc_ah; } ;
struct ath_regulatory {int max_power_level; } ;
struct ath_hw {scalar_t__ tpc_enabled; } ;
struct TYPE_6__ {int power_level; } ;
struct TYPE_8__ {TYPE_2__ conf; } ;
struct TYPE_7__ {int txpower; int cur_txpower; } ;


 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 struct ath_regulatory* ath9k_hw_regulatory (struct ath_hw*) ;
 int ath9k_hw_set_txpowerlimit (struct ath_hw*,int,int) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath9k_tpc_vif_iter ;
 int ieee80211_iterate_active_interfaces_atomic (TYPE_4__*,int ,int ,int*) ;

void ath9k_set_txpower(struct ath_softc *sc, struct ieee80211_vif *vif)
{
 int power;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_regulatory *reg = ath9k_hw_regulatory(ah);

 ath9k_ps_wakeup(sc);
 if (ah->tpc_enabled) {
  power = (vif) ? vif->bss_conf.txpower : -1;
  ieee80211_iterate_active_interfaces_atomic(
    sc->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
    ath9k_tpc_vif_iter, &power);
  if (power == -1)
   power = sc->hw->conf.power_level;
 } else {
  power = sc->hw->conf.power_level;
 }
 sc->cur_chan->txpower = 2 * power;
 ath9k_hw_set_txpowerlimit(ah, sc->cur_chan->txpower, 0);
 sc->cur_chan->cur_txpower = reg->max_power_level;
 ath9k_ps_restore(sc);
}

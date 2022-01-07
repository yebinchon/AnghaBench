
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ibss_creator; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; scalar_t__ drv_priv; } ;
struct ath_vif {struct ath_chanctx* chanctx; } ;
struct ath_softc {int ps_flags; int sc_pm_lock; struct ath_hw* sc_ah; } ;
struct ath_hw {scalar_t__ opmode; } ;
struct ath_common {int op_flags; } ;
struct ath_beacon_config {int enable_beacon; scalar_t__ beacon_interval; } ;
struct ath_chanctx {struct ath_beacon_config beacon; } ;


 int ATH_OP_BEACONS ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int PS_BEACON_SYNC ;
 int PS_WAIT_FOR_BEACON ;
 scalar_t__ WARN_ON (int) ;
 int ath9k_beacon_stop (struct ath_softc*) ;
 int ath9k_cache_beacon_config (struct ath_softc*,struct ath_chanctx*,TYPE_1__*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_set_beacon (struct ath_softc*) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ath9k_beacon_config(struct ath_softc *sc, struct ieee80211_vif *main_vif,
    bool beacons)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_vif *avp;
 struct ath_chanctx *ctx;
 struct ath_beacon_config *cur_conf;
 unsigned long flags;
 bool enabled;
 bool skip_beacon = 0;

 if (!beacons) {
  clear_bit(ATH_OP_BEACONS, &common->op_flags);
  ath9k_beacon_stop(sc);
  return;
 }

 if (WARN_ON(!main_vif))
  return;

 avp = (void *)main_vif->drv_priv;
 ctx = avp->chanctx;
 cur_conf = &ctx->beacon;
 enabled = cur_conf->enable_beacon;
 cur_conf->enable_beacon = beacons;

 if (sc->sc_ah->opmode == NL80211_IFTYPE_STATION) {
  ath9k_cache_beacon_config(sc, ctx, &main_vif->bss_conf);

  ath9k_set_beacon(sc);
  set_bit(ATH_OP_BEACONS, &common->op_flags);
  return;
 }


 ath9k_cache_beacon_config(sc, ctx, &main_vif->bss_conf);





 if (cur_conf->beacon_interval) {





  if (sc->sc_ah->opmode == NL80211_IFTYPE_ADHOC &&
      !enabled && beacons && !main_vif->bss_conf.ibss_creator) {
   spin_lock_irqsave(&sc->sc_pm_lock, flags);
   sc->ps_flags |= PS_BEACON_SYNC | PS_WAIT_FOR_BEACON;
   spin_unlock_irqrestore(&sc->sc_pm_lock, flags);
   skip_beacon = 1;
  }





  if (beacons && !skip_beacon) {
   set_bit(ATH_OP_BEACONS, &common->op_flags);
   ath9k_set_beacon(sc);
  } else {
   clear_bit(ATH_OP_BEACONS, &common->op_flags);
   ath9k_beacon_stop(sc);
  }
 } else {
  clear_bit(ATH_OP_BEACONS, &common->op_flags);
  ath9k_beacon_stop(sc);
 }
}

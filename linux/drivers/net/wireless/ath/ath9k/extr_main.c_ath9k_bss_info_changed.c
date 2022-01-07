
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_vif {scalar_t__ type; int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ieee80211_bss_conf {int txpower_type; int txpower; scalar_t__ use_short_slot; int aid; int bssid; int assoc; } ;
struct ath_vif {scalar_t__ chanctx; int assoc; int aid; int bssid; } ;
struct TYPE_2__ {int slottime; int updateslot; } ;
struct ath_softc {scalar_t__ cur_chan; int mutex; TYPE_1__ beacon; struct ath_hw* sc_ah; } ;
struct ath_hw {int slottime; } ;
struct ath_common {int curaid; int curbssid; } ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_BEACON_INFO ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_ERP_SLOT ;
 int BSS_CHANGED_IBSS ;
 int BSS_CHANGED_OCB ;
 int BSS_CHANGED_P2P_PS ;
 int BSS_CHANGED_TXPOWER ;
 int CHECK_ANI ;
 int CONFIG ;
 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int UPDATE ;
 int ath9k_calculate_summary_state (struct ath_softc*,scalar_t__) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_init_global_settings (struct ath_hw*) ;
 int ath9k_hw_write_associd (struct ath_hw*) ;
 int ath9k_p2p_bss_info_changed (struct ath_softc*,struct ieee80211_vif*) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath9k_set_txpower (struct ath_softc*,struct ieee80211_vif*) ;
 int ath_check_ani (struct ath_softc*) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ,...) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath9k_bss_info_changed(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       struct ieee80211_bss_conf *bss_conf,
       u32 changed)
{





 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_vif *avp = (void *)vif->drv_priv;
 int slottime;

 ath9k_ps_wakeup(sc);
 mutex_lock(&sc->mutex);

 if (changed & BSS_CHANGED_ASSOC) {
  ath_dbg(common, CONFIG, "BSSID %pM Changed ASSOC %d\n",
   bss_conf->bssid, bss_conf->assoc);

  memcpy(avp->bssid, bss_conf->bssid, ETH_ALEN);
  avp->aid = bss_conf->aid;
  avp->assoc = bss_conf->assoc;

  ath9k_calculate_summary_state(sc, avp->chanctx);
 }

 if ((changed & BSS_CHANGED_IBSS) ||
       (changed & BSS_CHANGED_OCB)) {
  memcpy(common->curbssid, bss_conf->bssid, ETH_ALEN);
  common->curaid = bss_conf->aid;
  ath9k_hw_write_associd(sc->sc_ah);
 }

 if ((changed & BSS_CHANGED_BEACON_ENABLED) ||
     (changed & BSS_CHANGED_BEACON_INT) ||
     (changed & BSS_CHANGED_BEACON_INFO)) {
  ath9k_calculate_summary_state(sc, avp->chanctx);
 }

 if ((avp->chanctx == sc->cur_chan) &&
     (changed & BSS_CHANGED_ERP_SLOT)) {
  if (bss_conf->use_short_slot)
   slottime = 9;
  else
   slottime = 20;

  if (vif->type == NL80211_IFTYPE_AP) {





   sc->beacon.slottime = slottime;
   sc->beacon.updateslot = UPDATE;
  } else {
   ah->slottime = slottime;
   ath9k_hw_init_global_settings(ah);
  }
 }

 if (changed & BSS_CHANGED_P2P_PS)
  ath9k_p2p_bss_info_changed(sc, vif);

 if (changed & (BSS_CHANGED_ASSOC | BSS_CHANGED_IBSS | BSS_CHANGED_BEACON_ENABLED))
  ath_check_ani(sc);

 if (changed & BSS_CHANGED_TXPOWER) {
  ath_dbg(common, CONFIG, "vif %pM power %d dbm power_type %d\n",
   vif->addr, bss_conf->txpower, bss_conf->txpower_type);
  ath9k_set_txpower(sc, vif);
 }

 mutex_unlock(&sc->mutex);
 ath9k_ps_restore(sc);


}

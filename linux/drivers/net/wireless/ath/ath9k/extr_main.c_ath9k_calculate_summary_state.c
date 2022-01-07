
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_chanctx {int switch_after_beacon; scalar_t__ primary_sta; } ;
struct TYPE_2__ {struct ath_chanctx chan; } ;
struct ath_softc {int nbcnvifs; struct ath_hw* sc_ah; TYPE_1__ offchannel; struct ath_chanctx* cur_chan; } ;
struct ath_hw {scalar_t__ opmode; scalar_t__ slottime; int imask; } ;
struct ath_common {int bssidmask; int curbssid; int macaddr; int op_flags; scalar_t__ curaid; } ;
struct ath9k_vif_iter_data {int naps; int beacons; scalar_t__ nmeshes; scalar_t__ nadhocs; scalar_t__ nstations; scalar_t__ primary_sta; scalar_t__ primary_beacon_vif; scalar_t__ slottime; int nbcnvifs; scalar_t__ nwds; scalar_t__ nocbs; int mask; int hw_macaddr; scalar_t__ has_hw_macaddr; } ;


 int ATH9K_INT_TSFOOR ;
 int ATH_OP_PRIM_STA_VIF ;
 int CONFIG ;
 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 void* NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_OCB ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int ath9k_beacon_config (struct ath_softc*,scalar_t__,int) ;
 int ath9k_beacon_ensure_primary_slot (struct ath_softc*) ;
 int ath9k_calculate_iter_data (struct ath_softc*,struct ath_chanctx*,struct ath9k_vif_iter_data*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_init_global_settings (struct ath_hw*) ;
 scalar_t__ ath9k_hw_mci_is_enabled (struct ath_hw*) ;
 int ath9k_hw_set_interrupts (struct ath_hw*) ;
 int ath9k_hw_set_tsfadjust (struct ath_hw*,int) ;
 int ath9k_hw_setopmode (struct ath_hw*) ;
 int ath9k_hw_write_associd (struct ath_hw*) ;
 int ath9k_mci_update_wlan_channels (struct ath_softc*,int) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath9k_set_assoc_state (struct ath_softc*,scalar_t__,int) ;
 void ath9k_set_offchannel_state (struct ath_softc*) ;
 int ath_chanctx_check_active (struct ath_softc*,struct ath_chanctx*) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ,int ) ;
 int ath_hw_setbssidmask (struct ath_common*) ;
 int clear_bit (int ,int *) ;
 int eth_zero_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int set_bit (int ,int *) ;

void ath9k_calculate_summary_state(struct ath_softc *sc,
       struct ath_chanctx *ctx)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_vif_iter_data iter_data;

 ath_chanctx_check_active(sc, ctx);

 if (ctx != sc->cur_chan)
  return;






 ath9k_ps_wakeup(sc);
 ath9k_calculate_iter_data(sc, ctx, &iter_data);

 if (iter_data.has_hw_macaddr)
  memcpy(common->macaddr, iter_data.hw_macaddr, ETH_ALEN);

 memcpy(common->bssidmask, iter_data.mask, ETH_ALEN);
 ath_hw_setbssidmask(common);

 if (iter_data.naps > 0) {
  ath9k_hw_set_tsfadjust(ah, 1);
  ah->opmode = NL80211_IFTYPE_AP;
 } else {
  ath9k_hw_set_tsfadjust(ah, 0);
  if (iter_data.beacons)
   ath9k_beacon_ensure_primary_slot(sc);

  if (iter_data.nmeshes)
   ah->opmode = NL80211_IFTYPE_MESH_POINT;
  else if (iter_data.nocbs)
   ah->opmode = NL80211_IFTYPE_OCB;
  else if (iter_data.nwds)
   ah->opmode = NL80211_IFTYPE_AP;
  else if (iter_data.nadhocs)
   ah->opmode = NL80211_IFTYPE_ADHOC;
  else
   ah->opmode = NL80211_IFTYPE_STATION;
 }

 ath9k_hw_setopmode(ah);

 ctx->switch_after_beacon = 0;
 if ((iter_data.nstations + iter_data.nadhocs + iter_data.nmeshes) > 0)
  ah->imask |= ATH9K_INT_TSFOOR;
 else {
  ah->imask &= ~ATH9K_INT_TSFOOR;
  if (iter_data.naps == 1 && iter_data.beacons)
   ctx->switch_after_beacon = 1;
 }

 if (ah->opmode == NL80211_IFTYPE_STATION) {
  bool changed = (iter_data.primary_sta != ctx->primary_sta);

  if (iter_data.primary_sta) {
   iter_data.primary_beacon_vif = iter_data.primary_sta;
   iter_data.beacons = 1;
   ath9k_set_assoc_state(sc, iter_data.primary_sta,
           changed);
   ctx->primary_sta = iter_data.primary_sta;
  } else {
   ctx->primary_sta = ((void*)0);
   eth_zero_addr(common->curbssid);
   common->curaid = 0;
   ath9k_hw_write_associd(sc->sc_ah);
   if (ath9k_hw_mci_is_enabled(sc->sc_ah))
    ath9k_mci_update_wlan_channels(sc, 1);
  }
 }
 sc->nbcnvifs = iter_data.nbcnvifs;
 ath9k_beacon_config(sc, iter_data.primary_beacon_vif,
       iter_data.beacons);
 ath9k_hw_set_interrupts(ah);

 if (ah->slottime != iter_data.slottime) {
  ah->slottime = iter_data.slottime;
  ath9k_hw_init_global_settings(ah);
 }

 if (iter_data.primary_sta)
  set_bit(ATH_OP_PRIM_STA_VIF, &common->op_flags);
 else
  clear_bit(ATH_OP_PRIM_STA_VIF, &common->op_flags);

 ath_dbg(common, CONFIG,
  "macaddr: %pM, bssid: %pM, bssidmask: %pM\n",
  common->macaddr, common->curbssid, common->bssidmask);

 ath9k_ps_restore(sc);
}

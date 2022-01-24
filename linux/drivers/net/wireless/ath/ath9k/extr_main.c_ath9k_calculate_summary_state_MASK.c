#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath_chanctx {int switch_after_beacon; scalar_t__ primary_sta; } ;
struct TYPE_2__ {struct ath_chanctx chan; } ;
struct ath_softc {int /*<<< orphan*/  nbcnvifs; struct ath_hw* sc_ah; TYPE_1__ offchannel; struct ath_chanctx* cur_chan; } ;
struct ath_hw {scalar_t__ opmode; scalar_t__ slottime; int /*<<< orphan*/  imask; } ;
struct ath_common {int /*<<< orphan*/  bssidmask; int /*<<< orphan*/  curbssid; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  op_flags; scalar_t__ curaid; } ;
struct ath9k_vif_iter_data {int naps; int beacons; scalar_t__ nmeshes; scalar_t__ nadhocs; scalar_t__ nstations; scalar_t__ primary_sta; scalar_t__ primary_beacon_vif; scalar_t__ slottime; int /*<<< orphan*/  nbcnvifs; scalar_t__ nwds; scalar_t__ nocbs; int /*<<< orphan*/  mask; int /*<<< orphan*/  hw_macaddr; scalar_t__ has_hw_macaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_INT_TSFOOR ; 
 int /*<<< orphan*/  ATH_OP_PRIM_STA_VIF ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 void* NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 scalar_t__ NL80211_IFTYPE_OCB ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,struct ath_chanctx*,struct ath9k_vif_iter_data*) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_softc*,scalar_t__,int) ; 
 void FUNC14 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_softc*,struct ath_chanctx*) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_common*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC22(struct ath_softc *sc,
				   struct ath_chanctx *ctx)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC3(ah);
	struct ath9k_vif_iter_data iter_data;

	FUNC15(sc, ctx);

	if (ctx != sc->cur_chan)
		return;

#ifdef CONFIG_ATH9K_CHANNEL_CONTEXT
	if (ctx == &sc->offchannel.chan)
		return ath9k_set_offchannel_state(sc);
#endif

	FUNC12(sc);
	FUNC2(sc, ctx, &iter_data);

	if (iter_data.has_hw_macaddr)
		FUNC20(common->macaddr, iter_data.hw_macaddr, ETH_ALEN);

	FUNC20(common->bssidmask, iter_data.mask, ETH_ALEN);
	FUNC17(common);

	if (iter_data.naps > 0) {
		FUNC7(ah, true);
		ah->opmode = NL80211_IFTYPE_AP;
	} else {
		FUNC7(ah, false);
		if (iter_data.beacons)
			FUNC1(sc);

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

	FUNC8(ah);

	ctx->switch_after_beacon = false;
	if ((iter_data.nstations + iter_data.nadhocs + iter_data.nmeshes) > 0)
		ah->imask |= ATH9K_INT_TSFOOR;
	else {
		ah->imask &= ~ATH9K_INT_TSFOOR;
		if (iter_data.naps == 1 && iter_data.beacons)
			ctx->switch_after_beacon = true;
	}

	if (ah->opmode == NL80211_IFTYPE_STATION) {
		bool changed = (iter_data.primary_sta != ctx->primary_sta);

		if (iter_data.primary_sta) {
			iter_data.primary_beacon_vif = iter_data.primary_sta;
			iter_data.beacons = true;
			FUNC13(sc, iter_data.primary_sta,
					      changed);
			ctx->primary_sta = iter_data.primary_sta;
		} else {
			ctx->primary_sta = NULL;
			FUNC19(common->curbssid);
			common->curaid = 0;
			FUNC9(sc->sc_ah);
			if (FUNC5(sc->sc_ah))
				FUNC10(sc, true);
		}
	}
	sc->nbcnvifs = iter_data.nbcnvifs;
	FUNC0(sc, iter_data.primary_beacon_vif,
			    iter_data.beacons);
	FUNC6(ah);

	if (ah->slottime != iter_data.slottime) {
		ah->slottime = iter_data.slottime;
		FUNC4(ah);
	}

	if (iter_data.primary_sta)
		FUNC21(ATH_OP_PRIM_STA_VIF, &common->op_flags);
	else
		FUNC18(ATH_OP_PRIM_STA_VIF, &common->op_flags);

	FUNC16(common, CONFIG,
		"macaddr: %pM, bssid: %pM, bssidmask: %pM\n",
		common->macaddr, common->curbssid, common->bssidmask);

	FUNC11(sc);
}
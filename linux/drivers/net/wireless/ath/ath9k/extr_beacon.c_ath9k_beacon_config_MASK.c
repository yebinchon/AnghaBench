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
struct TYPE_2__ {int /*<<< orphan*/  ibss_creator; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; scalar_t__ drv_priv; } ;
struct ath_vif {struct ath_chanctx* chanctx; } ;
struct ath_softc {int ps_flags; int /*<<< orphan*/  sc_pm_lock; struct ath_hw* sc_ah; } ;
struct ath_hw {scalar_t__ opmode; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct ath_beacon_config {int enable_beacon; scalar_t__ beacon_interval; } ;
struct ath_chanctx {struct ath_beacon_config beacon; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_BEACONS ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int PS_BEACON_SYNC ; 
 int PS_WAIT_FOR_BEACON ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,struct ath_chanctx*,TYPE_1__*) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct ath_softc *sc, struct ieee80211_vif *main_vif,
			 bool beacons)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC3(ah);
	struct ath_vif *avp;
	struct ath_chanctx *ctx;
	struct ath_beacon_config *cur_conf;
	unsigned long flags;
	bool enabled;
	bool skip_beacon = false;

	if (!beacons) {
		FUNC5(ATH_OP_BEACONS, &common->op_flags);
		FUNC1(sc);
		return;
	}

	if (FUNC0(!main_vif))
		return;

	avp = (void *)main_vif->drv_priv;
	ctx = avp->chanctx;
	cur_conf = &ctx->beacon;
	enabled = cur_conf->enable_beacon;
	cur_conf->enable_beacon = beacons;

	if (sc->sc_ah->opmode == NL80211_IFTYPE_STATION) {
		FUNC2(sc, ctx, &main_vif->bss_conf);

		FUNC4(sc);
		FUNC6(ATH_OP_BEACONS, &common->op_flags);
		return;
	}

	/* Update the beacon configuration. */
	FUNC2(sc, ctx, &main_vif->bss_conf);

	/*
	 * Configure the HW beacon registers only when we have a valid
	 * beacon interval.
	 */
	if (cur_conf->beacon_interval) {
		/* Special case to sync the TSF when joining an existing IBSS.
		 * This is only done if no AP interface is active.
		 * Note that mac80211 always resets the TSF when creating a new
		 * IBSS interface.
		 */
		if (sc->sc_ah->opmode == NL80211_IFTYPE_ADHOC &&
		    !enabled && beacons && !main_vif->bss_conf.ibss_creator) {
			FUNC7(&sc->sc_pm_lock, flags);
			sc->ps_flags |= PS_BEACON_SYNC | PS_WAIT_FOR_BEACON;
			FUNC8(&sc->sc_pm_lock, flags);
			skip_beacon = true;
		}

		/*
		 * Do not set the ATH_OP_BEACONS flag for IBSS joiner mode
		 * here, it is done in ath9k_beacon_config_adhoc().
		 */
		if (beacons && !skip_beacon) {
			FUNC6(ATH_OP_BEACONS, &common->op_flags);
			FUNC4(sc);
		} else {
			FUNC5(ATH_OP_BEACONS, &common->op_flags);
			FUNC1(sc);
		}
	} else {
		FUNC5(ATH_OP_BEACONS, &common->op_flags);
		FUNC1(sc);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_vif {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ath_vif {int /*<<< orphan*/  aid; int /*<<< orphan*/  bssid; } ;
struct ath_softc {int ps_flags; TYPE_2__* sc_ah; int /*<<< orphan*/  sc_pm_lock; } ;
struct ath_common {int /*<<< orphan*/  curbssid; void* last_rssi; int /*<<< orphan*/  curaid; int /*<<< orphan*/  op_flags; } ;
struct TYPE_5__ {void* avgbrssi; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_PRIM_STA_VIF ; 
 void* ATH_RSSI_DUMMY_MARKER ; 
 int /*<<< orphan*/  CONFIG ; 
 int PS_BEACON_SYNC ; 
 int PS_WAIT_FOR_BEACON ; 
 struct ath_common* FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct ath_softc *sc,
				  struct ieee80211_vif *vif, bool changed)
{
	struct ath_common *common = FUNC0(sc->sc_ah);
	struct ath_vif *avp = (struct ath_vif *)vif->drv_priv;
	unsigned long flags;

	FUNC6(ATH_OP_PRIM_STA_VIF, &common->op_flags);

	FUNC5(common->curbssid, avp->bssid);
	common->curaid = avp->aid;
	FUNC2(sc->sc_ah);

	if (changed) {
		common->last_rssi = ATH_RSSI_DUMMY_MARKER;
		sc->sc_ah->stats.avgbrssi = ATH_RSSI_DUMMY_MARKER;

		FUNC7(&sc->sc_pm_lock, flags);
		sc->ps_flags |= PS_BEACON_SYNC | PS_WAIT_FOR_BEACON;
		FUNC8(&sc->sc_pm_lock, flags);
	}

	if (FUNC1(sc->sc_ah))
		FUNC3(sc, false);

	FUNC4(common, CONFIG,
		"Primary Station interface: %pM, BSSID: %pM\n",
		vif->addr, common->curbssid);
}
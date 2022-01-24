#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int txpower; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ath_softc {TYPE_3__* cur_chan; TYPE_4__* hw; struct ath_hw* sc_ah; } ;
struct ath_regulatory {int /*<<< orphan*/  max_power_level; } ;
struct ath_hw {scalar_t__ tpc_enabled; } ;
struct TYPE_6__ {int power_level; } ;
struct TYPE_8__ {TYPE_2__ conf; } ;
struct TYPE_7__ {int txpower; int /*<<< orphan*/  cur_txpower; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 struct ath_regulatory* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  ath9k_tpc_vif_iter ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

void FUNC5(struct ath_softc *sc, struct ieee80211_vif *vif)
{
	int power;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_regulatory *reg = FUNC0(ah);

	FUNC3(sc);
	if (ah->tpc_enabled) {
		power = (vif) ? vif->bss_conf.txpower : -1;
		FUNC4(
				sc->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
				ath9k_tpc_vif_iter, &power);
		if (power == -1)
			power = sc->hw->conf.power_level;
	} else {
		power = sc->hw->conf.power_level;
	}
	sc->cur_chan->txpower = 2 * power;
	FUNC1(ah, sc->cur_chan->txpower, false);
	sc->cur_chan->cur_txpower = reg->max_power_level;
	FUNC2(sc);
}
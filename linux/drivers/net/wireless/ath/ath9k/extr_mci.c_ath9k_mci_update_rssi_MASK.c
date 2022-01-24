#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ath_btcoex {int /*<<< orphan*/  rssi_count; } ;
struct ath_softc {struct ath_hw* sc_ah; struct ath_btcoex btcoex; } ;
struct TYPE_4__ {int avgbrssi; } ;
struct ath9k_hw_mci {int config; } ;
struct TYPE_3__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_2__ stats; TYPE_1__ btcoex_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_MCI_CONCUR_TX_SWITCH ; 
 int ATH_MCI_CONFIG_CONCUR_TX ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 

void FUNC2(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_btcoex *btcoex = &sc->btcoex;
	struct ath9k_hw_mci *mci_hw = &sc->sc_ah->btcoex_hw.mci;

	FUNC1(sc);

	if (!(mci_hw->config & ATH_MCI_CONFIG_CONCUR_TX))
		return;

	if (ah->stats.avgbrssi >= 40) {
		if (btcoex->rssi_count < 0)
			btcoex->rssi_count = 0;
		if (++btcoex->rssi_count >= ATH_MCI_CONCUR_TX_SWITCH) {
			btcoex->rssi_count = 0;
			FUNC0(sc, false, true);
		}
	} else {
		if (btcoex->rssi_count > 0)
			btcoex->rssi_count = 0;
		if (--btcoex->rssi_count <= -ATH_MCI_CONCUR_TX_SWITCH) {
			btcoex->rssi_count = 0;
			FUNC0(sc, false, false);
		}
	}
}
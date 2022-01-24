#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ath_softc {TYPE_2__* cur_chan; struct ath_hw* sc_ah; } ;
struct ath9k_hw_mci {int concur_tx; int config; } ;
struct TYPE_6__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_3__* curchan; TYPE_1__ btcoex_hw; } ;
struct ath9k_hw_cal_data {int channel; } ;
struct TYPE_8__ {int channel; } ;
struct TYPE_7__ {int /*<<< orphan*/  txpower; struct ath9k_hw_cal_data caldata; } ;

/* Variables and functions */
 int ATH_MCI_CONFIG_CONCUR_TX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct ath_softc *sc, bool setchannel,
			   bool concur_tx)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath9k_hw_mci *mci_hw = &sc->sc_ah->btcoex_hw.mci;
	bool old_concur_tx = mci_hw->concur_tx;

	if (!(mci_hw->config & ATH_MCI_CONFIG_CONCUR_TX)) {
		mci_hw->concur_tx = false;
		return;
	}

	if (!FUNC0(ah->curchan))
		return;

	if (setchannel) {
		struct ath9k_hw_cal_data *caldata = &sc->cur_chan->caldata;
		if (FUNC2(ah->curchan) &&
		    (ah->curchan->channel > caldata->channel) &&
		    (ah->curchan->channel <= caldata->channel + 20))
			return;
		if (FUNC1(ah->curchan) &&
		    (ah->curchan->channel < caldata->channel) &&
		    (ah->curchan->channel >= caldata->channel - 20))
			return;
		mci_hw->concur_tx = false;
	} else
		mci_hw->concur_tx = concur_tx;

	if (old_concur_tx != mci_hw->concur_tx)
		FUNC3(ah, sc->cur_chan->txpower, false);
}
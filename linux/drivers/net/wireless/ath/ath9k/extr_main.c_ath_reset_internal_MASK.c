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
struct ath_softc {int /*<<< orphan*/  intr_tq; int /*<<< orphan*/  bcon_tasklet; int /*<<< orphan*/  sc_pcu_lock; int /*<<< orphan*/  irq; TYPE_1__* cur_chan; struct ath_hw* sc_ah; int /*<<< orphan*/  chan_lock; int /*<<< orphan*/  cur_chandef; } ;
struct ath_hw {struct ath9k_channel* curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_hw_cal_data {int dummy; } ;
struct ath9k_channel {int /*<<< orphan*/  channel; } ;
struct TYPE_2__ {scalar_t__ offchannel; int /*<<< orphan*/  chandef; struct ath9k_hw_cal_data caldata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  RESET_TYPE_BB_HANG ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 int FUNC5 (struct ath_hw*,struct ath9k_channel*,struct ath9k_hw_cal_data*,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_common*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct ath_softc *sc, struct ath9k_channel *hchan)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	struct ath9k_hw_cal_data *caldata = NULL;
	bool fastcc = true;
	int r;

	FUNC1(sc);

	FUNC13(sc->irq);
	FUNC17(&sc->intr_tq);
	FUNC17(&sc->bcon_tasklet);
	FUNC15(&sc->sc_pcu_lock);

	if (!sc->cur_chan->offchannel) {
		fastcc = false;
		caldata = &sc->cur_chan->caldata;
	}

	if (!hchan) {
		fastcc = false;
		hchan = ah->curchan;
	}

	if (!FUNC12(sc))
		fastcc = false;

	if (FUNC6())
		fastcc = false;

	FUNC15(&sc->chan_lock);
	sc->cur_chandef = sc->cur_chan->chandef;
	FUNC16(&sc->chan_lock);

	FUNC10(common, CONFIG, "Reset to %u MHz, HT40: %d fastcc: %d\n",
		hchan->channel, FUNC0(hchan), fastcc);

	r = FUNC5(ah, hchan, caldata, fastcc);
	if (r) {
		FUNC11(common,
			"Unable to reset channel, reset status %d\n", r);

		FUNC3(ah);
		FUNC8(sc, RESET_TYPE_BB_HANG);

		goto out;
	}

	if (FUNC4(sc->sc_ah) &&
	    sc->cur_chan->offchannel)
		FUNC7(sc, true, false);

	if (!FUNC9(sc, true))
		r = -EIO;

out:
	FUNC14(sc->irq);
	FUNC16(&sc->sc_pcu_lock);
	FUNC18(&sc->bcon_tasklet);
	FUNC18(&sc->intr_tq);

	return r;
}
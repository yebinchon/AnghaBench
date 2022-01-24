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
typedef  scalar_t__ u32 ;
struct ath_softc {int ps_flags; int /*<<< orphan*/  hw; scalar_t__ gtt_cnt; int /*<<< orphan*/  sc_pm_lock; TYPE_1__* cur_chan; struct ath_hw* sc_ah; } ;
struct ath_hw {scalar_t__ opmode; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct TYPE_2__ {scalar_t__ tsf_val; int /*<<< orphan*/  tsf_ts; int /*<<< orphan*/  offchannel; int /*<<< orphan*/  cur_txpower; int /*<<< orphan*/  txpower; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_BEACONS ; 
 int /*<<< orphan*/  ATH_OP_HW_RESET ; 
 int /*<<< orphan*/  ATH_OP_PRIM_STA_VIF ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int PS_BEACON_SYNC ; 
 int PS_WAIT_FOR_BEACON ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC17(struct ath_softc *sc, bool start)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	unsigned long flags;

	FUNC0(sc, sc->cur_chan);
	FUNC10(sc);
	FUNC1(ah, sc->cur_chan->cur_txpower,
			       sc->cur_chan->txpower,
			       &sc->cur_chan->cur_txpower);
	FUNC12(ATH_OP_HW_RESET, &common->op_flags);

	if (!sc->cur_chan->offchannel && start) {
		/* restore per chanctx TSF timer */
		if (sc->cur_chan->tsf_val) {
			u32 offset;

			offset = FUNC4(&sc->cur_chan->tsf_ts,
							 NULL);
			FUNC6(ah, sc->cur_chan->tsf_val + offset);
		}


		if (!FUNC16(ATH_OP_BEACONS, &common->op_flags))
			goto work;

		if (ah->opmode == NL80211_IFTYPE_STATION &&
		    FUNC16(ATH_OP_PRIM_STA_VIF, &common->op_flags)) {
			FUNC14(&sc->sc_pm_lock, flags);
			sc->ps_flags |= PS_BEACON_SYNC | PS_WAIT_FOR_BEACON;
			FUNC15(&sc->sc_pm_lock, flags);
		} else {
			FUNC8(sc);
		}
	work:
		FUNC9(sc);
		FUNC11(sc);
	}

	sc->gtt_cnt = 0;

	FUNC5(ah);
	FUNC3(ah);
	FUNC13(sc->hw);
	FUNC7(sc);

	return true;
}
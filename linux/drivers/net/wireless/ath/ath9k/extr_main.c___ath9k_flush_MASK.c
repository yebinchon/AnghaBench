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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  hw_check_work; int /*<<< orphan*/  sc_pcu_lock; int /*<<< orphan*/  tx_wait; int /*<<< orphan*/  chan_lock; TYPE_1__* cur_chan; struct ath_hw* sc_ah; } ;
struct ath_hw {int ah_flags; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct TYPE_2__ {int flush_timeout; } ;

/* Variables and functions */
 int AH_UNPLUGGED ; 
 int /*<<< orphan*/  ANY ; 
 int /*<<< orphan*/  ATH_HW_CHECK_POLL_INT ; 
 int /*<<< orphan*/  ATH_OP_INVALID ; 
 int /*<<< orphan*/  CHAN_CTX ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,int) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int,int) ; 

void FUNC14(struct ieee80211_hw *hw, u32 queues, bool drop,
		   bool sw_pending, bool timeout_override)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC1(ah);
	int timeout;
	bool drain_txq;

	FUNC7(&sc->hw_check_work);

	if (ah->ah_flags & AH_UNPLUGGED) {
		FUNC4(common, ANY, "Device has been unplugged!\n");
		return;
	}

	if (FUNC12(ATH_OP_INVALID, &common->op_flags)) {
		FUNC4(common, ANY, "Device not present\n");
		return;
	}

	FUNC10(&sc->chan_lock);
	if (timeout_override)
		timeout = HZ / 5;
	else
		timeout = sc->cur_chan->flush_timeout;
	FUNC11(&sc->chan_lock);

	FUNC4(common, CHAN_CTX,
		"Flush timeout: %d\n", FUNC9(timeout));

	if (FUNC13(sc->tx_wait, !FUNC0(sc, sw_pending),
			       timeout) > 0)
		drop = false;

	if (drop) {
		FUNC3(sc);
		FUNC10(&sc->sc_pcu_lock);
		drain_txq = FUNC5(sc);
		FUNC11(&sc->sc_pcu_lock);

		if (!drain_txq)
			FUNC6(sc, NULL);

		FUNC2(sc);
	}

	FUNC8(hw, &sc->hw_check_work,
				     ATH_HW_CHECK_POLL_INT);
}
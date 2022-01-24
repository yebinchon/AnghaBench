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
typedef  int u32 ;
struct ath_softc {int intrstatus; scalar_t__ gtt_cnt; int ps_flags; int /*<<< orphan*/  sc_pcu_lock; struct ath_hw* sc_ah; int /*<<< orphan*/  tx_wait; int /*<<< orphan*/  sc_pm_lock; scalar_t__ ps_enabled; int /*<<< orphan*/  intr_lock; } ;
struct TYPE_4__ {int hw_caps; } ;
struct TYPE_3__ {int hw_hang_checks; } ;
struct ath_hw {TYPE_2__ caps; TYPE_1__ config; } ;
struct ath_common {int /*<<< orphan*/  cc_lock; } ;
typedef  enum ath_reset_type { ____Placeholder_ath_reset_type } ath_reset_type ;

/* Variables and functions */
 int ATH9K_HW_CAP_EDMA ; 
 int ATH9K_INT_BB_WATCHDOG ; 
 int ATH9K_INT_FATAL ; 
 int ATH9K_INT_GENTIMER ; 
 int ATH9K_INT_GTT ; 
 int ATH9K_INT_RX ; 
 int ATH9K_INT_RXEOL ; 
 int ATH9K_INT_RXHP ; 
 int ATH9K_INT_RXLP ; 
 int ATH9K_INT_RXORN ; 
 int ATH9K_INT_TSFOOR ; 
 int ATH9K_INT_TX ; 
 int HW_BB_WATCHDOG ; 
 scalar_t__ MAX_GTT_CNT ; 
 int /*<<< orphan*/  PS ; 
 int PS_BEACON_SYNC ; 
 int PS_WAIT_FOR_BEACON ; 
 int /*<<< orphan*/  RESET ; 
 int RESET_TYPE_BB_WATCHDOG ; 
 int RESET_TYPE_FATAL_INT ; 
 int RESET_TYPE_TX_GTT ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_common*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

void FUNC20(unsigned long data)
{
	struct ath_softc *sc = (struct ath_softc *)data;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC4(ah);
	enum ath_reset_type type;
	unsigned long flags;
	u32 status;
	u32 rxmask;

	FUNC16(&sc->intr_lock, flags);
	status = sc->intrstatus;
	sc->intrstatus = 0;
	FUNC18(&sc->intr_lock, flags);

	FUNC7(sc);
	FUNC15(&sc->sc_pcu_lock);

	if (status & ATH9K_INT_FATAL) {
		type = RESET_TYPE_FATAL_INT;
		FUNC8(sc, type);
		FUNC9(common, RESET, "FATAL: Skipping interrupts\n");
		goto out;
	}

	if ((ah->config.hw_hang_checks & HW_BB_WATCHDOG) &&
	    (status & ATH9K_INT_BB_WATCHDOG)) {
		FUNC16(&common->cc_lock, flags);
		FUNC11(common);
		FUNC1(ah);
		FUNC18(&common->cc_lock, flags);

		if (FUNC0(ah)) {
			type = RESET_TYPE_BB_WATCHDOG;
			FUNC8(sc, type);

			FUNC9(common, RESET,
				"BB_WATCHDOG: Skipping interrupts\n");
			goto out;
		}
	}

	if (status & ATH9K_INT_GTT) {
		sc->gtt_cnt++;

		if ((sc->gtt_cnt >= MAX_GTT_CNT) && !FUNC3(ah)) {
			type = RESET_TYPE_TX_GTT;
			FUNC8(sc, type);
			FUNC9(common, RESET,
				"GTT: Skipping interrupts\n");
			goto out;
		}
	}

	FUNC16(&sc->sc_pm_lock, flags);
	if ((status & ATH9K_INT_TSFOOR) && sc->ps_enabled) {
		/*
		 * TSF sync does not look correct; remain awake to sync with
		 * the next Beacon.
		 */
		FUNC9(common, PS, "TSFOOR - Sync with next Beacon\n");
		sc->ps_flags |= PS_WAIT_FOR_BEACON | PS_BEACON_SYNC;
	}
	FUNC18(&sc->sc_pm_lock, flags);

	if (ah->caps.hw_caps & ATH9K_HW_CAP_EDMA)
		rxmask = (ATH9K_INT_RXHP | ATH9K_INT_RXLP | ATH9K_INT_RXEOL |
			  ATH9K_INT_RXORN);
	else
		rxmask = (ATH9K_INT_RX | ATH9K_INT_RXEOL | ATH9K_INT_RXORN);

	if (status & rxmask) {
		/* Check for high priority Rx first */
		if ((ah->caps.hw_caps & ATH9K_HW_CAP_EDMA) &&
		    (status & ATH9K_INT_RXHP))
			FUNC12(sc, 0, true);

		FUNC12(sc, 0, false);
	}

	if (status & ATH9K_INT_TX) {
		if (ah->caps.hw_caps & ATH9K_HW_CAP_EDMA) {
			/*
			 * For EDMA chips, TX completion is enabled for the
			 * beacon queue, so if a beacon has been transmitted
			 * successfully after a GTT interrupt, the GTT counter
			 * gets reset to zero here.
			 */
			sc->gtt_cnt = 0;

			FUNC13(sc);
		} else {
			FUNC14(sc);
		}

		FUNC19(&sc->tx_wait);
	}

	if (status & ATH9K_INT_GENTIMER)
		FUNC10(sc->sc_ah);

	FUNC2(sc, status);

	/* re-enable hardware interrupt */
	FUNC5(ah);
out:
	FUNC17(&sc->sc_pcu_lock);
	FUNC6(sc);
}
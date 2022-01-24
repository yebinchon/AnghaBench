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
struct TYPE_4__ {int /*<<< orphan*/ * rxlink; } ;
struct ath_softc {struct ath_hw* sc_ah; TYPE_2__ rx; } ;
struct TYPE_3__ {int hw_caps; } ;
struct ath_hw {int ah_flags; TYPE_1__ caps; } ;

/* Variables and functions */
 int AH_UNPLUGGED ; 
 int ATH9K_HW_CAP_EDMA ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  RESET_RX_DMA_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath_hw*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 scalar_t__ FUNC8 (int) ; 

bool FUNC9(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;
	bool stopped, reset = false;

	FUNC1(ah);
	FUNC3(ah, 0);
	stopped = FUNC4(ah, &reset);

	FUNC7(sc);

	if (sc->sc_ah->caps.hw_caps & ATH9K_HW_CAP_EDMA)
		FUNC6(sc);
	else
		sc->rx.rxlink = NULL;

	if (!(ah->ah_flags & AH_UNPLUGGED) &&
	    FUNC8(!stopped)) {
		FUNC5(FUNC2(sc->sc_ah), RESET,
			"Failed to stop Rx DMA\n");
		FUNC0(sc, RESET_RX_DMA_ERROR);
	}
	return stopped && !reset;
}
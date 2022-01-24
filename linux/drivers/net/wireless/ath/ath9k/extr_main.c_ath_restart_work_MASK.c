#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ath_softc {int /*<<< orphan*/  hw_pll_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  sc_ah; int /*<<< orphan*/  hw_check_work; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH_HW_CHECK_POLL_INT ; 
 int /*<<< orphan*/  ATH_PLL_WORK_INTERVAL ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct ath_softc *sc)
{
	FUNC3(sc->hw, &sc->hw_check_work,
				     ATH_HW_CHECK_POLL_INT);

	if (FUNC1(sc->sc_ah) || FUNC0(sc->sc_ah))
		FUNC3(sc->hw, &sc->hw_pll_work,
				     FUNC4(ATH_PLL_WORK_INTERVAL));

	FUNC2(sc);
}
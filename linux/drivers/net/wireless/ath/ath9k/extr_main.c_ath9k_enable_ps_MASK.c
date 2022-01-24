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
struct ath_softc {int ps_enabled; struct ath_hw* sc_ah; } ;
struct TYPE_2__ {int hw_caps; } ;
struct ath_hw {int imask; TYPE_1__ caps; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int ATH9K_HW_CAP_AUTOSLEEP ; 
 int ATH9K_INT_TIM_TIMER ; 
 int /*<<< orphan*/  CONFIG_ATH9K_TX99 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC1(ah);

	if (FUNC0(CONFIG_ATH9K_TX99))
		return;

	sc->ps_enabled = true;
	if (!(ah->caps.hw_caps & ATH9K_HW_CAP_AUTOSLEEP)) {
		if ((ah->imask & ATH9K_INT_TIM_TIMER) == 0) {
			ah->imask |= ATH9K_INT_TIM_TIMER;
			FUNC2(ah);
		}
		FUNC3(ah, 1);
	}
	FUNC4(common, PS, "PowerSave enabled\n");
}
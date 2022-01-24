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
struct ath_softc {int /*<<< orphan*/  hw_reset_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
typedef  enum ath_reset_type { ____Placeholder_ath_reset_type } ath_reset_type ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_HW_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,int) ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct ath_softc *sc, enum ath_reset_type type)
{
	struct ath_common *common = FUNC1(sc->sc_ah);
#ifdef CONFIG_ATH9K_DEBUGFS
	RESET_STAT_INC(sc, type);
#endif
	FUNC2(sc->sc_ah);
	FUNC4(ATH_OP_HW_RESET, &common->op_flags);
	FUNC3(sc->hw, &sc->hw_reset_work);
}
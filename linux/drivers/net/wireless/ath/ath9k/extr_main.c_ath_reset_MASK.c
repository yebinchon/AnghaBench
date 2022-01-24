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
struct ath_softc {int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_HW_RESET ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int FUNC4 (struct ath_softc*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct ath_softc *sc, struct ath9k_channel *hchan)
{
	struct ath_common *common = FUNC0(sc->sc_ah);
	int r;

	FUNC1(sc->sc_ah);
	FUNC5(ATH_OP_HW_RESET, &common->op_flags);

	FUNC3(sc);
	r = FUNC4(sc, hchan);
	FUNC2(sc);

	return r;
}
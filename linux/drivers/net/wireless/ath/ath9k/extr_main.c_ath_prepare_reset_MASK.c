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
struct ath_softc {int /*<<< orphan*/  hw; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;
	bool ret = true;

	FUNC5(sc->hw);
	FUNC3(sc);
	FUNC1(ah);

	if (FUNC0(ah)) {
		ret &= FUNC4(sc);
		ret &= FUNC2(sc);
	} else {
		ret &= FUNC2(sc);
		ret &= FUNC4(sc);
	}

	return ret;
}
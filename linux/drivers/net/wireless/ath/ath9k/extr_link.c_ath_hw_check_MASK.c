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
struct ath_common {int dummy; } ;
typedef  enum ath_reset_type { ____Placeholder_ath_reset_type } ath_reset_type ;

/* Variables and functions */
 int /*<<< orphan*/  RESET ; 
 int RESET_TYPE_MAC_HANG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

bool FUNC6(struct ath_softc *sc)
{
	struct ath_common *common = FUNC1(sc->sc_ah);
	enum ath_reset_type type;
	bool is_alive;

	FUNC3(sc);

	is_alive = FUNC0(sc->sc_ah);

	if (!is_alive) {
		FUNC5(common, RESET,
			"HW hang detected, schedule chip reset\n");
		type = RESET_TYPE_MAC_HANG;
		FUNC4(sc, type);
	}

	FUNC2(sc);

	return is_alive;
}
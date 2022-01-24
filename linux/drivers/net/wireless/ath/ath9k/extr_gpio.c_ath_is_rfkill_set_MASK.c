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
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {scalar_t__ rfkill_polarity; int /*<<< orphan*/  rfkill_gpio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 

__attribute__((used)) static bool FUNC3(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;
	bool is_blocked;

	FUNC2(sc);
	is_blocked = FUNC0(ah, ah->rfkill_gpio) ==
				  ah->rfkill_polarity;
	FUNC1(sc);

	return is_blocked;
}
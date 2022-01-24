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
struct timer_list {int dummy; } ;
struct ath_softc {int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int /*<<< orphan*/  cc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_PM_FULL_SLEEP ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*) ; 
 struct ath_softc* FUNC5 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct ath_softc* sc ; 
 int /*<<< orphan*/  sleep_timer ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct timer_list *t)
{
	struct ath_softc *sc = FUNC5(sc, t, sleep_timer);
	struct ath_common *common = FUNC0(sc->sc_ah);
	unsigned long flags;
	bool reset;

	FUNC6(&common->cc_lock, flags);
	FUNC4(common);
	FUNC7(&common->cc_lock, flags);

	FUNC2(sc->sc_ah, 1);
	FUNC3(sc->sc_ah, &reset);

	FUNC1(sc->sc_ah, ATH9K_PM_FULL_SLEEP);
}
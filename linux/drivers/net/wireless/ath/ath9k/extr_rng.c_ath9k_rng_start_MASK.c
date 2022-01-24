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
struct ath_softc {int /*<<< orphan*/ * rng_task; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ath9k_rng_kthread ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct ath_softc*,char*) ; 

void FUNC3(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;

	if (sc->rng_task)
		return;

	if (!FUNC0(ah))
		return;

	sc->rng_task = FUNC2(ath9k_rng_kthread, sc, "ath9k-hwrng");
	if (FUNC1(sc->rng_task))
		sc->rng_task = NULL;
}
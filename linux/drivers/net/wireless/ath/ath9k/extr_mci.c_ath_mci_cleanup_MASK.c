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
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCI ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct ath_softc *sc)
{
	struct ath_common *common = FUNC1(sc->sc_ah);
	struct ath_hw *ah = sc->sc_ah;

	FUNC0(ah);

	FUNC2(common, MCI, "MCI De-Initialized\n");
}
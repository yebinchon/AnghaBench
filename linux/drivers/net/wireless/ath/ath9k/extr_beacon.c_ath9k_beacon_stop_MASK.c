#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ bmisscnt; } ;
struct ath_softc {TYPE_2__* sc_ah; TYPE_1__ beacon; } ;
struct TYPE_6__ {int imask; } ;

/* Variables and functions */
 int ATH9K_INT_BMISS ; 
 int ATH9K_INT_SWBA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct ath_softc *sc)
{
	FUNC0(sc->sc_ah);
	sc->sc_ah->imask &= ~(ATH9K_INT_SWBA | ATH9K_INT_BMISS);
	sc->beacon.bmisscnt = 0;
	FUNC2(sc->sc_ah);
	FUNC1(sc->sc_ah);
}
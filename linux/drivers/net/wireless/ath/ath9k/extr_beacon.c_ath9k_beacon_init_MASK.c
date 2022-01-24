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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ bmisscnt; } ;
struct ath_softc {TYPE_1__ beacon; struct ath_hw* sc_ah; } ;
struct ath_hw {int /*<<< orphan*/  imask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_INT_SWBA ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 

__attribute__((used)) static void FUNC5(struct ath_softc *sc, u32 nexttbtt,
			      u32 intval)
{
	struct ath_hw *ah = sc->sc_ah;

	FUNC2(ah);
	FUNC0(sc);
	FUNC1(ah, nexttbtt, intval);
	ah->imask |= ATH9K_INT_SWBA;
	sc->beacon.bmisscnt = 0;
	FUNC4(ah);
	FUNC3(ah);
}
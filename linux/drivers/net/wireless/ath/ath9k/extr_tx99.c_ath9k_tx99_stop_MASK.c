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
struct ath_softc {int tx99_state; struct ath_hw* sc_ah; int /*<<< orphan*/ * tx99_skb; int /*<<< orphan*/  hw; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XMIT ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC0(ah);

	FUNC5(sc);
	FUNC6(sc);

	FUNC2(ah);
	FUNC1(ah);

	FUNC7(sc->hw);

	FUNC8(sc->tx99_skb);
	sc->tx99_skb = NULL;
	sc->tx99_state = false;

	FUNC3(sc->sc_ah);
	FUNC4(common, XMIT, "TX99 stopped\n");
}
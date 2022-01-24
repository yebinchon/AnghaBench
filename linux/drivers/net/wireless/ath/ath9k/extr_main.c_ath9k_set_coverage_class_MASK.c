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
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  mutex; struct ath_hw* sc_ah; } ;
struct TYPE_2__ {int enabled; } ;
struct ath_hw {TYPE_1__ dynack; scalar_t__ coverage_class; } ;
typedef  scalar_t__ s16 ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ATH9K_TX99 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw,
				     s16 coverage_class)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;

	if (FUNC0(CONFIG_ATH9K_TX99))
		return;

	FUNC7(&sc->mutex);

	if (coverage_class >= 0) {
		ah->coverage_class = coverage_class;
		if (ah->dynack.enabled) {
			u32 rfilt;

			ah->dynack.enabled = false;
			rfilt = FUNC6(sc);
			FUNC3(ah, rfilt);
		}
		FUNC5(sc);
		FUNC2(ah);
		FUNC4(sc);
	} else if (!ah->dynack.enabled) {
		FUNC1(sc);
	}

	FUNC8(&sc->mutex);
}
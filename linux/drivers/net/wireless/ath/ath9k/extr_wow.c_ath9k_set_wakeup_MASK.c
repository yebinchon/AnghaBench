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
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WOW ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ieee80211_hw *hw, bool enabled)
{
	struct ath_softc *sc = hw->priv;
	struct ath_common *common = FUNC0(sc->sc_ah);

	FUNC3(&sc->mutex);
	FUNC2(sc->dev, enabled);
	FUNC4(&sc->mutex);

	FUNC1(common, WOW, "WoW wakeup source is %s\n",
		(enabled) ? "enabled" : "disabled");
}
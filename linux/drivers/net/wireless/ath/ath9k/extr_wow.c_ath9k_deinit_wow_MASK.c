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
struct ath_softc {int driver_data; int /*<<< orphan*/  dev; scalar_t__ force_wow; } ;

/* Variables and functions */
 int ATH9K_PCI_WOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct ieee80211_hw *hw)
{
	struct ath_softc *sc = hw->priv;

	if ((sc->driver_data & ATH9K_PCI_WOW) || sc->force_wow)
		FUNC0(sc->dev, 0);
}
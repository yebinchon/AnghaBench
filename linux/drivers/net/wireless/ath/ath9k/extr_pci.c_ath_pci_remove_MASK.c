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
struct pci_dev {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  hw; int /*<<< orphan*/  irq; TYPE_1__* sc_ah; } ;
struct TYPE_2__ {int /*<<< orphan*/  ah_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_UNPLUGGED ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  is_ath9k_unloaded ; 
 struct ieee80211_hw* FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct ieee80211_hw *hw = FUNC3(pdev);
	struct ath_softc *sc = hw->priv;

	if (!is_ath9k_unloaded)
		sc->sc_ah->ah_flags |= AH_UNPLUGGED;
	FUNC0(sc);
	FUNC1(sc->irq, sc);
	FUNC2(sc->hw);
}
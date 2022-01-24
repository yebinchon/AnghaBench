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
struct lpphy_tx_gains {int dummy; } ;
struct TYPE_2__ {struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {int txpctl_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_LPPHY_AFE_CTL_OVR ; 
 int /*<<< orphan*/  B43_LPPHY_RF_PWR_OVERRIDE ; 
 int B43_LPPHY_TXPCTL_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct b43_wldev*) ; 
 struct lpphy_tx_gains FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,struct lpphy_tx_gains) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int) ; 

__attribute__((used)) static void FUNC8(struct b43_wldev *dev)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;
	struct lpphy_tx_gains oldgains;
	int old_txpctl, old_afe_ovr, old_rf, old_bbmult;

	FUNC4(dev);
	old_txpctl = lpphy->txpctl_mode;
	old_afe_ovr = FUNC1(dev, B43_LPPHY_AFE_CTL_OVR) & 0x40;
	if (old_afe_ovr)
		oldgains = FUNC3(dev);
	old_rf = FUNC1(dev, B43_LPPHY_RF_PWR_OVERRIDE) & 0xFF;
	old_bbmult = FUNC2(dev);

	FUNC7(dev, B43_LPPHY_TXPCTL_OFF);

	if (old_afe_ovr)
		FUNC6(dev, oldgains);
	FUNC5(dev, old_bbmult);
	FUNC7(dev, old_txpctl);
	FUNC0(dev, B43_LPPHY_RF_PWR_OVERRIDE, 0xFF00, old_rf);
}
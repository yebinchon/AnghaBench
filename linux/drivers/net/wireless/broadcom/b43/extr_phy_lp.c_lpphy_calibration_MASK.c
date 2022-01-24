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
struct TYPE_2__ {int rev; struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {scalar_t__ full_calib_chan; scalar_t__ channel; int txpctl_mode; } ;
typedef  enum b43_lpphy_txpctl_mode { ____Placeholder_b43_lpphy_txpctl_mode } b43_lpphy_txpctl_mode ;

/* Variables and functions */
 int B43_LPPHY_TXPCTL_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int) ; 

__attribute__((used)) static void FUNC10(struct b43_wldev *dev)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;
	enum b43_lpphy_txpctl_mode saved_pctl_mode;
	bool full_cal = false;

	if (lpphy->full_calib_chan != lpphy->channel) {
		full_cal = true;
		lpphy->full_calib_chan = lpphy->channel;
	}

	FUNC1(dev);

	FUNC2(dev);
	if (dev->phy.rev >= 2)
		FUNC8(dev);
	FUNC5(dev);
	saved_pctl_mode = lpphy->txpctl_mode;
	FUNC9(dev, B43_LPPHY_TXPCTL_OFF);
	//TODO Perform transmit power table I/Q LO calibration
	if ((dev->phy.rev == 0) && (saved_pctl_mode != B43_LPPHY_TXPCTL_OFF))
		FUNC4(dev);
	if ((dev->phy.rev >= 2) && full_cal) {
		FUNC3(dev);
	}
	FUNC9(dev, saved_pctl_mode);
	if (dev->phy.rev >= 2)
		FUNC6(dev);
	FUNC7(dev, true, true, false, false, NULL);

	FUNC0(dev);
}
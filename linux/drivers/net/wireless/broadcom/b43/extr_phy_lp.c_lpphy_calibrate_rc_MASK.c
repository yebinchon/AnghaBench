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
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__ phy; } ;
struct b43_phy_lp {int /*<<< orphan*/  rc_cap; } ;

/* Variables and functions */
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;

	if (dev->phy.rev >= 2) {
		FUNC2(dev);
	} else if (!lpphy->rc_cap) {
		if (FUNC0(dev->wl) == NL80211_BAND_2GHZ)
			FUNC1(dev);
	} else {
		FUNC3(dev);
	}
}
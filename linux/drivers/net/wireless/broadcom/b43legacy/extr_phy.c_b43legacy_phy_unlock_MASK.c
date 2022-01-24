#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ phy_locked; } ;
struct b43legacy_wldev {int /*<<< orphan*/  wl; TYPE_3__* dev; TYPE_1__ phy; } ;
struct TYPE_5__ {int revision; } ;
struct TYPE_6__ {TYPE_2__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int,int) ; 

void FUNC4(struct b43legacy_wldev *dev)
{
#if B43legacy_DEBUG
	B43legacy_WARN_ON(!dev->phy.phy_locked);
	dev->phy.phy_locked = 0;
#endif

	if (dev->dev->id.revision < 3) {
		FUNC2(dev);
	} else {
		if (!FUNC1(dev->wl, NL80211_IFTYPE_AP))
			FUNC3(dev, -1, -1);
	}
}
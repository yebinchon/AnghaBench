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
struct b43legacy_phy {scalar_t__ type; int rev; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;

/* Variables and functions */
 scalar_t__ B43legacy_PHYTYPE_G ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 

__attribute__((used)) static void FUNC3(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;

	if (phy->type != B43legacy_PHYTYPE_G || phy->rev < 2)
		return;

	FUNC1(dev);
	FUNC2(dev);
	FUNC0(dev);
}
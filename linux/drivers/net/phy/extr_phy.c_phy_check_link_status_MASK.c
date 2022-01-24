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
struct phy_device {scalar_t__ state; scalar_t__ link; scalar_t__ loopback_enabled; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ PHY_NOLINK ; 
 scalar_t__ PHY_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 
 int FUNC4 (struct phy_device*) ; 

__attribute__((used)) static int FUNC5(struct phy_device *phydev)
{
	int err;

	FUNC0(!FUNC1(&phydev->lock));

	/* Keep previous state if loopback is enabled because some PHYs
	 * report that Link is Down when loopback is enabled.
	 */
	if (phydev->loopback_enabled)
		return 0;

	err = FUNC4(phydev);
	if (err)
		return err;

	if (phydev->link && phydev->state != PHY_RUNNING) {
		phydev->state = PHY_RUNNING;
		FUNC3(phydev);
	} else if (!phydev->link && phydev->state != PHY_NOLINK) {
		phydev->state = PHY_NOLINK;
		FUNC2(phydev, true);
	}

	return 0;
}
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
struct phy_device {int /*<<< orphan*/  attached_dev; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; scalar_t__ link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct phy_device *phydev)
{
	if (phydev->link) {
		FUNC0(phydev->attached_dev,
			"Link is Up - %s/%s - flow control %s\n",
			FUNC3(phydev->speed),
			FUNC1(phydev->duplex),
			FUNC2(phydev));
	} else	{
		FUNC0(phydev->attached_dev, "Link is Down\n");
	}
}
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
struct phy_device {scalar_t__ speed; scalar_t__ autoneg; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 scalar_t__ SPEED_100 ; 
 int FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int ret;

	ret = FUNC0(phydev);
	if (ret < 0)
		return ret;

	/* Quirk was copied from vendor driver. Unfortunately it includes no
	 * description of the magic numbers.
	 */
	if (phydev->speed == SPEED_100 && phydev->autoneg == AUTONEG_DISABLE) {
		FUNC1(phydev, 0x17, 0x2138);
		FUNC1(phydev, 0x0e, 0x0260);
	} else {
		FUNC1(phydev, 0x17, 0x2108);
		FUNC1(phydev, 0x0e, 0x0000);
	}

	return 0;
}
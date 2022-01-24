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
struct phy_device {scalar_t__ autoneg; scalar_t__ speed; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 scalar_t__ SPEED_100 ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int ret;

	/* Enable auto MDI/MDI-X when in 10/100 forced link speeds by
	 * writing special values in the VSC8234 extended reserved registers
	 */
	if (phydev->autoneg != AUTONEG_ENABLE && phydev->speed <= SPEED_100) {
		ret = FUNC1(phydev);

		if (ret < 0) /* error */
			return ret;

		return FUNC2(phydev);
	}

	return FUNC0(phydev);
}
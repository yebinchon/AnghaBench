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
typedef  int /*<<< orphan*/  u32 ;
struct phy_device {int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int ADVERTISE_1000FULL ; 
 int ADVERTISE_1000HALF ; 
 int ADVERTISE_100BASE4 ; 
 int ADVERTISE_ALL ; 
 int ADVERTISE_PAUSE_ASYM ; 
 int ADVERTISE_PAUSE_CAP ; 
 int BMSR_ESTATEN ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct phy_device *phydev)
{
	int err, bmsr, changed = 0;
	u32 adv;

	/* Only allow advertising what this PHY supports */
	FUNC2(phydev->advertising, phydev->advertising,
		     phydev->supported);

	adv = FUNC0(phydev->advertising);

	/* Setup standard advertisement */
	err = FUNC3(phydev, MII_ADVERTISE,
				 ADVERTISE_ALL | ADVERTISE_100BASE4 |
				 ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM,
				 adv);
	if (err < 0)
		return err;
	if (err > 0)
		changed = 1;

	bmsr = FUNC4(phydev, MII_BMSR);
	if (bmsr < 0)
		return bmsr;

	/* Per 802.3-2008, Section 22.2.4.2.16 Extended status all
	 * 1000Mbits/sec capable PHYs shall have the BMSR_ESTATEN bit set to a
	 * logical 1.
	 */
	if (!(bmsr & BMSR_ESTATEN))
		return changed;

	adv = FUNC1(phydev->advertising);

	err = FUNC3(phydev, MII_CTRL1000,
				 ADVERTISE_1000FULL | ADVERTISE_1000HALF,
				 adv);
	if (err < 0)
		return err;
	if (err > 0)
		changed = 1;

	return changed;
}
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
typedef  int u8 ;
struct phy_device {int phy_id; TYPE_1__* drv; } ;
struct TYPE_2__ {int phy_id_mask; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int DOWNSHIFT_DEV_DISABLE ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int*) ; 
 int FUNC2 (struct phy_device*,int) ; 
 int FUNC3 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct phy_device *phydev)
{
	u8 count, rev;
	int ret = 0;

	rev = phydev->phy_id & ~phydev->drv->phy_id_mask;

	FUNC6("%s: %s PHY revision: 0x%02x\n",
		     FUNC5(phydev), phydev->drv->name, rev);

	/* Dummy read to a register to workaround an issue upon reset where the
	 * internal inverter may not allow the first MDIO transaction to pass
	 * the MDIO management controller and make us return 0xffff for such
	 * reads.
	 */
	FUNC4(phydev, MII_BMSR);

	switch (rev) {
	case 0x00:
		ret = FUNC0(phydev);
		break;
	default:
		break;
	}

	if (ret)
		return ret;

	ret = FUNC1(phydev, &count);
	if (ret)
		return ret;

	/* Only enable EEE if Wirespeed/downshift is disabled */
	ret = FUNC3(phydev, count == DOWNSHIFT_DEV_DISABLE);
	if (ret)
		return ret;

	return FUNC2(phydev, true);
}
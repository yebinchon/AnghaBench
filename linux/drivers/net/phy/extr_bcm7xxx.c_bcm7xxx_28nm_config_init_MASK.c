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
struct phy_device {int phy_id; TYPE_1__* drv; int /*<<< orphan*/  dev_flags; } ;
struct TYPE_2__ {int phy_id_mask; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int DOWNSHIFT_DEV_DISABLE ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*) ; 
 int FUNC4 (struct phy_device*) ; 
 int FUNC5 (struct phy_device*) ; 
 int FUNC6 (struct phy_device*,int*) ; 
 int FUNC7 (struct phy_device*,int) ; 
 int FUNC8 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC12(struct phy_device *phydev)
{
	u8 rev = FUNC1(phydev->dev_flags);
	u8 patch = FUNC0(phydev->dev_flags);
	u8 count;
	int ret = 0;

	/* Newer devices have moved the revision information back into a
	 * standard location in MII_PHYS_ID[23]
	 */
	if (rev == 0)
		rev = phydev->phy_id & ~phydev->drv->phy_id_mask;

	FUNC11("%s: %s PHY revision: 0x%02x, patch: %d\n",
		     FUNC10(phydev), phydev->drv->name, rev, patch);

	/* Dummy read to a register to workaround an issue upon reset where the
	 * internal inverter may not allow the first MDIO transaction to pass
	 * the MDIO management controller and make us return 0xffff for such
	 * reads.
	 */
	FUNC9(phydev, MII_BMSR);

	switch (rev) {
	case 0xa0:
	case 0xb0:
		ret = FUNC5(phydev);
		break;
	case 0xd0:
		ret = FUNC3(phydev);
		break;
	case 0xe0:
	case 0xf0:
	/* Rev G0 introduces a roll over */
	case 0x10:
		ret = FUNC4(phydev);
		break;
	case 0x01:
		ret = FUNC2(phydev);
		break;
	default:
		break;
	}

	if (ret)
		return ret;

	ret = FUNC6(phydev, &count);
	if (ret)
		return ret;

	/* Only enable EEE if Wirespeed/downshift is disabled */
	ret = FUNC8(phydev, count == DOWNSHIFT_DEV_DISABLE);
	if (ret)
		return ret;

	return FUNC7(phydev, true);
}
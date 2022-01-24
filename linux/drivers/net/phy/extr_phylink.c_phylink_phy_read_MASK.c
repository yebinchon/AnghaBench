#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct phylink {struct phy_device* phydev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus; } ;
struct TYPE_3__ {int devices_in_package; } ;
struct phy_device {TYPE_2__ mdio; TYPE_1__ c45_ids; scalar_t__ is_c45; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int MDIO_AN_ADVERTISE ; 
 unsigned int MDIO_AN_LPA ; 
 int MDIO_DEVS_AN ; 
 int MDIO_MMD_AN ; 
 int MII_ADDR_C45 ; 
#define  MII_ADVERTISE 133 
#define  MII_BMCR 132 
#define  MII_BMSR 131 
#define  MII_LPA 130 
#define  MII_PHYSID1 129 
#define  MII_PHYSID2 128 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct phylink *pl, unsigned int phy_id,
			    unsigned int reg)
{
	struct phy_device *phydev = pl->phydev;
	int prtad, devad;

	if (FUNC2(phy_id)) {
		prtad = FUNC3(phy_id);
		devad = FUNC1(phy_id);
		devad = MII_ADDR_C45 | devad << 16 | reg;
	} else if (phydev->is_c45) {
		switch (reg) {
		case MII_BMCR:
		case MII_BMSR:
		case MII_PHYSID1:
		case MII_PHYSID2:
			devad = FUNC0(phydev->c45_ids.devices_in_package);
			break;
		case MII_ADVERTISE:
		case MII_LPA:
			if (!(phydev->c45_ids.devices_in_package & MDIO_DEVS_AN))
				return -EINVAL;
			devad = MDIO_MMD_AN;
			if (reg == MII_ADVERTISE)
				reg = MDIO_AN_ADVERTISE;
			else
				reg = MDIO_AN_LPA;
			break;
		default:
			return -EINVAL;
		}
		prtad = phy_id;
		devad = MII_ADDR_C45 | devad << 16 | reg;
	} else {
		prtad = phy_id;
		devad = reg;
	}
	return FUNC4(pl->phydev->mdio.bus, prtad, devad);
}
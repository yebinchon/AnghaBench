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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct xgene_mdio_pdata {int dummy; } ;
struct mii_bus {int /*<<< orphan*/  dev; scalar_t__ priv; } ;

/* Variables and functions */
 int BUSY_MASK ; 
 int EBUSY ; 
 int /*<<< orphan*/  MII_MGMT_ADDRESS_ADDR ; 
 int /*<<< orphan*/  MII_MGMT_CONTROL_ADDR ; 
 int /*<<< orphan*/  MII_MGMT_INDICATORS_ADDR ; 
 int /*<<< orphan*/  PHY_ADDR ; 
 int /*<<< orphan*/  REG_ADDR ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (struct xgene_mdio_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_mdio_pdata*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct mii_bus *bus, int phy_id, int reg, u16 data)
{
	struct xgene_mdio_pdata *pdata = (struct xgene_mdio_pdata *)bus->priv;
	u32 val, done;
	u8 wait = 10;

	val = FUNC0(PHY_ADDR, phy_id) | FUNC0(REG_ADDR, reg);
	FUNC4(pdata, MII_MGMT_ADDRESS_ADDR, val);

	FUNC4(pdata, MII_MGMT_CONTROL_ADDR, data);
	do {
		FUNC2(5, 10);
		done = FUNC3(pdata, MII_MGMT_INDICATORS_ADDR);
	} while ((done & BUSY_MASK) && wait--);

	if (done & BUSY_MASK) {
		FUNC1(&bus->dev, "MII_MGMT write failed\n");
		return -EBUSY;
	}

	return 0;
}
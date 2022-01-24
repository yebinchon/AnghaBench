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
struct xge_pdata {int dummy; } ;
struct mii_bus {int /*<<< orphan*/  dev; struct xge_pdata* priv; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MII_MGMT_ADDRESS ; 
 int MII_MGMT_BUSY ; 
 int /*<<< orphan*/  MII_MGMT_COMMAND ; 
 int /*<<< orphan*/  MII_MGMT_INDICATORS ; 
 int /*<<< orphan*/  MII_MGMT_STATUS ; 
 int MII_READ_CYCLE ; 
 int /*<<< orphan*/  PHY_ADDR ; 
 int /*<<< orphan*/  REG_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (struct xge_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xge_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct mii_bus *bus, int phy_id, int reg)
{
	struct xge_pdata *pdata = bus->priv;
	u32 data, done, val = 0;
	u8 wait = 10;

	FUNC0(&val, PHY_ADDR, phy_id);
	FUNC0(&val, REG_ADDR, reg);
	FUNC4(pdata, MII_MGMT_ADDRESS, val);

	FUNC4(pdata, MII_MGMT_COMMAND, MII_READ_CYCLE);
	do {
		FUNC2(5, 10);
		done = FUNC3(pdata, MII_MGMT_INDICATORS);
	} while ((done & MII_MGMT_BUSY) && wait--);

	if (done & MII_MGMT_BUSY) {
		FUNC1(&bus->dev, "MII_MGMT read failed\n");
		return -ETIMEDOUT;
	}

	data = FUNC3(pdata, MII_MGMT_STATUS);
	FUNC4(pdata, MII_MGMT_COMMAND, 0);

	return data;
}
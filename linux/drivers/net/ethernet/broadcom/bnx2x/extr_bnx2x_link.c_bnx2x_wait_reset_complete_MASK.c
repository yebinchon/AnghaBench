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
typedef  int u16 ;
struct link_params {int /*<<< orphan*/  port; } ;
struct bnx2x_phy {scalar_t__ type; } ;
struct bnx2x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CTRL ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static u16 FUNC5(struct bnx2x *bp,
				     struct bnx2x_phy *phy,
				     struct link_params *params)
{
	u16 cnt, ctrl;
	/* Wait for soft reset to get cleared up to 1 sec */
	for (cnt = 0; cnt < 1000; cnt++) {
		if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE)
			FUNC1(bp, phy,
				MDIO_PMA_REG_CTRL, &ctrl);
		else
			FUNC2(bp, phy,
				MDIO_PMA_DEVAD,
				MDIO_PMA_REG_CTRL, &ctrl);
		if (!(ctrl & (1<<15)))
			break;
		FUNC4(1000, 2000);
	}

	if (cnt == 1000)
		FUNC3(bp->dev,  "Warning: PHY was not initialized,"
				      " Port %d\n",
			 params->port);
	FUNC0(NETIF_MSG_LINK, "control reg 0x%x (after %d ms)\n", ctrl, cnt);
	return cnt;
}
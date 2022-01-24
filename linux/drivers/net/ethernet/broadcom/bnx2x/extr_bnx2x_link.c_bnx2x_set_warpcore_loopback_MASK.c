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
typedef  int u32 ;
typedef  int u16 ;
struct link_params {int /*<<< orphan*/  loopback_mode; struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ req_line_speed; int supported; int flags; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FLAGS_WC_DUAL_MODE ; 
 int /*<<< orphan*/  MDIO_AER_BLOCK_AER_REG ; 
 int /*<<< orphan*/  MDIO_REG_BANK_AER_BLOCK ; 
 int /*<<< orphan*/  MDIO_WC_DEVAD ; 
 int /*<<< orphan*/  MDIO_WC_REG_COMBO_IEEE0_MIICTRL ; 
 int /*<<< orphan*/  MDIO_WC_REG_IEEE0BLK_MIICNTL ; 
 int /*<<< orphan*/  MDIO_WC_REG_XGXSBLK0_XGXSCONTROL ; 
 int /*<<< orphan*/  MDIO_WC_REG_XGXSBLK1_LANECTRL2 ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 scalar_t__ SPEED_10000 ; 
 int SUPPORTED_20000baseKR2_Full ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct bnx2x_phy*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct link_params*,struct bnx2x_phy*) ; 

__attribute__((used)) static void FUNC7(struct bnx2x_phy *phy,
					struct link_params *params)
{
	struct bnx2x *bp = params->bp;
	u16 val16;
	u32 lane;
	FUNC1(NETIF_MSG_LINK, "Setting Warpcore loopback type %x, speed %d\n",
		       params->loopback_mode, phy->req_line_speed);

	if (phy->req_line_speed < SPEED_10000 ||
	    phy->supported & SUPPORTED_20000baseKR2_Full) {
		/* 10/100/1000/20G-KR2 */

		/* Update those 1-copy registers */
		FUNC0(bp, phy, MDIO_REG_BANK_AER_BLOCK,
				  MDIO_AER_BLOCK_AER_REG, 0);
		/* Enable 1G MDIO (1-copy) */
		FUNC3(bp, phy, MDIO_WC_DEVAD,
					 MDIO_WC_REG_XGXSBLK0_XGXSCONTROL,
					 0x10);
		/* Set 1G loopback based on lane (1-copy) */
		lane = FUNC5(phy, params);
		FUNC2(bp, phy, MDIO_WC_DEVAD,
				MDIO_WC_REG_XGXSBLK1_LANECTRL2, &val16);
		val16 |= (1<<lane);
		if (phy->flags & FLAGS_WC_DUAL_MODE)
			val16 |= (2<<lane);
		FUNC4(bp, phy, MDIO_WC_DEVAD,
				 MDIO_WC_REG_XGXSBLK1_LANECTRL2,
				 val16);

		/* Switch back to 4-copy registers */
		FUNC6(params, phy);
	} else {
		/* 10G / 20G-DXGXS */
		FUNC3(bp, phy, MDIO_WC_DEVAD,
					 MDIO_WC_REG_COMBO_IEEE0_MIICTRL,
					 0x4000);
		FUNC3(bp, phy, MDIO_WC_DEVAD,
					 MDIO_WC_REG_IEEE0BLK_MIICNTL, 0x1);
	}
}
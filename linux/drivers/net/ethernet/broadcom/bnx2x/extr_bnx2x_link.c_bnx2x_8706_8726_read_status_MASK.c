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
typedef  int u16 ;
struct link_vars {scalar_t__ line_speed; int fault_detected; int /*<<< orphan*/  duplex; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_LINK_STATUS ; 
 int /*<<< orphan*/  MDIO_PCS_DEVAD ; 
 int /*<<< orphan*/  MDIO_PCS_REG_STATUS ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_RXSTAT ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_STAT ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_TXCTRL ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_TXSTAT ; 
 int /*<<< orphan*/  MDIO_PMA_REG_RX_SD ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 scalar_t__ SPEED_1000 ; 
 scalar_t__ SPEED_10000 ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x_phy*,struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC4(struct bnx2x_phy *phy,
				      struct link_params *params,
				      struct link_vars *vars)
{
	u8 link_up = 0;
	u16 val1, val2, rx_sd, pcs_status;
	struct bnx2x *bp = params->bp;
	FUNC0(NETIF_MSG_LINK, "XGXS 8706/8726\n");
	/* Clear RX Alarm*/
	FUNC1(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXSTAT, &val2);

	FUNC3(bp, phy, MDIO_PMA_LASI_TXSTAT,
			     MDIO_PMA_LASI_TXCTRL);

	/* Clear LASI indication*/
	FUNC1(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val1);
	FUNC1(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val2);
	FUNC0(NETIF_MSG_LINK, "8706/8726 LASI status 0x%x--> 0x%x\n", val1, val2);

	FUNC1(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_REG_RX_SD, &rx_sd);
	FUNC1(bp, phy,
			MDIO_PCS_DEVAD, MDIO_PCS_REG_STATUS, &pcs_status);
	FUNC1(bp, phy,
			MDIO_AN_DEVAD, MDIO_AN_REG_LINK_STATUS, &val2);
	FUNC1(bp, phy,
			MDIO_AN_DEVAD, MDIO_AN_REG_LINK_STATUS, &val2);

	FUNC0(NETIF_MSG_LINK, "8706/8726 rx_sd 0x%x pcs_status 0x%x 1Gbps"
			" link_status 0x%x\n", rx_sd, pcs_status, val2);
	/* Link is up if both bit 0 of pmd_rx_sd and bit 0 of pcs_status
	 * are set, or if the autoneg bit 1 is set
	 */
	link_up = ((rx_sd & pcs_status & 0x1) || (val2 & (1<<1)));
	if (link_up) {
		if (val2 & (1<<1))
			vars->line_speed = SPEED_1000;
		else
			vars->line_speed = SPEED_10000;
		FUNC2(phy, params, vars);
		vars->duplex = DUPLEX_FULL;
	}

	/* Capture 10G link fault. Read twice to clear stale value. */
	if (vars->line_speed == SPEED_10000) {
		FUNC1(bp, phy, MDIO_PMA_DEVAD,
			    MDIO_PMA_LASI_TXSTAT, &val1);
		FUNC1(bp, phy, MDIO_PMA_DEVAD,
			    MDIO_PMA_LASI_TXSTAT, &val1);
		if (val1 & (1<<0))
			vars->fault_detected = 1;
	}

	return link_up;
}
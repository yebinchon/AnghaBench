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
struct link_vars {int phy_flags; int flow_ctrl; int /*<<< orphan*/  mac_type; } ;
struct link_params {int port; int lane_config; int feature_config_flags; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BNX2X_FLOW_CTRL_RX ; 
 int BNX2X_FLOW_CTRL_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EMAC_REG_EMAC_MODE ; 
 int EMAC_REG_EMAC_RX_MODE ; 
 int EMAC_REG_EMAC_RX_MTU_SIZE ; 
 int EMAC_REG_EMAC_TX_MODE ; 
 int EMAC_REG_RX_PFC_MODE ; 
 int EMAC_REG_RX_PFC_MODE_PRIORITIES ; 
 int EMAC_REG_RX_PFC_MODE_RX_EN ; 
 int EMAC_REG_RX_PFC_MODE_TX_EN ; 
 int EMAC_REG_RX_PFC_PARAM ; 
 int EMAC_REG_RX_PFC_PARAM_OPCODE_BITSHIFT ; 
 int EMAC_REG_RX_PFC_PARAM_PRIORITY_EN_BITSHIFT ; 
 int EMAC_RX_MODE_FLOW_EN ; 
 int EMAC_RX_MODE_KEEP_MAC_CONTROL ; 
 int EMAC_RX_MODE_KEEP_VLAN_TAG ; 
 int EMAC_RX_MODE_PROMISCUOUS ; 
 int EMAC_RX_MODE_RESET ; 
 int EMAC_RX_MTU_SIZE_JUMBO_ENA ; 
 int EMAC_TX_MODE_EXT_PAUSE_EN ; 
 int EMAC_TX_MODE_FLOW_EN ; 
 int EMAC_TX_MODE_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int,int) ; 
 int ETH_MAX_JUMBO_PACKET_SIZE ; 
 int ETH_OVERHEAD ; 
 int FEATURE_CONFIG_PFC_ENABLED ; 
 int GRCBASE_EMAC0 ; 
 int GRCBASE_EMAC1 ; 
 scalar_t__ GRCBASE_MISC ; 
 int /*<<< orphan*/  MAC_TYPE_EMAC ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_2_CLEAR ; 
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 scalar_t__ NIG_REG_BMAC0_IN_EN ; 
 scalar_t__ NIG_REG_BMAC0_OUT_EN ; 
 scalar_t__ NIG_REG_BMAC0_PAUSE_OUT_EN ; 
 scalar_t__ NIG_REG_BMAC0_REGS_OUT_EN ; 
 scalar_t__ NIG_REG_EGRESS_EMAC0_OUT_EN ; 
 scalar_t__ NIG_REG_EGRESS_EMAC0_PORT ; 
 scalar_t__ NIG_REG_EMAC0_IN_EN ; 
 scalar_t__ NIG_REG_EMAC0_PAUSE_OUT_EN ; 
 scalar_t__ NIG_REG_NIG_EMAC0_EN ; 
 scalar_t__ NIG_REG_NIG_INGRESS_EMAC0_NO_CRC ; 
 scalar_t__ NIG_REG_XGXS_LANE_SEL_P0 ; 
 scalar_t__ NIG_REG_XGXS_SERDES0_MODE_SEL ; 
 int PHY_XGXS_FLAG ; 
 int PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK ; 
 int PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT ; 
 int FUNC2 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int,int) ; 

__attribute__((used)) static int FUNC6(struct link_params *params,
			     struct link_vars *vars, u8 lb)
{
	struct bnx2x *bp = params->bp;
	u8 port = params->port;
	u32 emac_base = port ? GRCBASE_EMAC1 : GRCBASE_EMAC0;
	u32 val;

	FUNC0(NETIF_MSG_LINK, "enabling EMAC\n");

	/* Disable BMAC */
	FUNC3(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
	       (MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << port));

	/* enable emac and not bmac */
	FUNC3(bp, NIG_REG_EGRESS_EMAC0_PORT + port*4, 1);

	/* ASIC */
	if (vars->phy_flags & PHY_XGXS_FLAG) {
		u32 ser_lane = ((params->lane_config &
				 PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK) >>
				PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT);

		FUNC0(NETIF_MSG_LINK, "XGXS\n");
		/* select the master lanes (out of 0-3) */
		FUNC3(bp, NIG_REG_XGXS_LANE_SEL_P0 + port*4, ser_lane);
		/* select XGXS */
		FUNC3(bp, NIG_REG_XGXS_SERDES0_MODE_SEL + port*4, 1);

	} else { /* SerDes */
		FUNC0(NETIF_MSG_LINK, "SerDes\n");
		/* select SerDes */
		FUNC3(bp, NIG_REG_XGXS_SERDES0_MODE_SEL + port*4, 0);
	}

	FUNC5(bp, emac_base + EMAC_REG_EMAC_RX_MODE,
		      EMAC_RX_MODE_RESET);
	FUNC5(bp, emac_base + EMAC_REG_EMAC_TX_MODE,
		      EMAC_TX_MODE_RESET);

	/* pause enable/disable */
	FUNC4(bp, emac_base + EMAC_REG_EMAC_RX_MODE,
		       EMAC_RX_MODE_FLOW_EN);

	FUNC4(bp,  emac_base + EMAC_REG_EMAC_TX_MODE,
		       (EMAC_TX_MODE_EXT_PAUSE_EN |
			EMAC_TX_MODE_FLOW_EN));
	if (!(params->feature_config_flags &
	      FEATURE_CONFIG_PFC_ENABLED)) {
		if (vars->flow_ctrl & BNX2X_FLOW_CTRL_RX)
			FUNC5(bp, emac_base +
				      EMAC_REG_EMAC_RX_MODE,
				      EMAC_RX_MODE_FLOW_EN);

		if (vars->flow_ctrl & BNX2X_FLOW_CTRL_TX)
			FUNC5(bp, emac_base +
				      EMAC_REG_EMAC_TX_MODE,
				      (EMAC_TX_MODE_EXT_PAUSE_EN |
				       EMAC_TX_MODE_FLOW_EN));
	} else
		FUNC5(bp, emac_base + EMAC_REG_EMAC_TX_MODE,
			      EMAC_TX_MODE_FLOW_EN);

	/* KEEP_VLAN_TAG, promiscuous */
	val = FUNC2(bp, emac_base + EMAC_REG_EMAC_RX_MODE);
	val |= EMAC_RX_MODE_KEEP_VLAN_TAG | EMAC_RX_MODE_PROMISCUOUS;

	/* Setting this bit causes MAC control frames (except for pause
	 * frames) to be passed on for processing. This setting has no
	 * affect on the operation of the pause frames. This bit effects
	 * all packets regardless of RX Parser packet sorting logic.
	 * Turn the PFC off to make sure we are in Xon state before
	 * enabling it.
	 */
	FUNC1(bp, EMAC_REG_RX_PFC_MODE, 0);
	if (params->feature_config_flags & FEATURE_CONFIG_PFC_ENABLED) {
		FUNC0(NETIF_MSG_LINK, "PFC is enabled\n");
		/* Enable PFC again */
		FUNC1(bp, EMAC_REG_RX_PFC_MODE,
			EMAC_REG_RX_PFC_MODE_RX_EN |
			EMAC_REG_RX_PFC_MODE_TX_EN |
			EMAC_REG_RX_PFC_MODE_PRIORITIES);

		FUNC1(bp, EMAC_REG_RX_PFC_PARAM,
			((0x0101 <<
			  EMAC_REG_RX_PFC_PARAM_OPCODE_BITSHIFT) |
			 (0x00ff <<
			  EMAC_REG_RX_PFC_PARAM_PRIORITY_EN_BITSHIFT)));
		val |= EMAC_RX_MODE_KEEP_MAC_CONTROL;
	}
	FUNC1(bp, EMAC_REG_EMAC_RX_MODE, val);

	/* Set Loopback */
	val = FUNC2(bp, emac_base + EMAC_REG_EMAC_MODE);
	if (lb)
		val |= 0x810;
	else
		val &= ~0x810;
	FUNC1(bp, EMAC_REG_EMAC_MODE, val);

	/* Enable emac */
	FUNC3(bp, NIG_REG_NIG_EMAC0_EN + port*4, 1);

	/* Enable emac for jumbo packets */
	FUNC1(bp, EMAC_REG_EMAC_RX_MTU_SIZE,
		(EMAC_RX_MTU_SIZE_JUMBO_ENA |
		 (ETH_MAX_JUMBO_PACKET_SIZE + ETH_OVERHEAD)));

	/* Strip CRC */
	FUNC3(bp, NIG_REG_NIG_INGRESS_EMAC0_NO_CRC + port*4, 0x1);

	/* Disable the NIG in/out to the bmac */
	FUNC3(bp, NIG_REG_BMAC0_IN_EN + port*4, 0x0);
	FUNC3(bp, NIG_REG_BMAC0_PAUSE_OUT_EN + port*4, 0x0);
	FUNC3(bp, NIG_REG_BMAC0_OUT_EN + port*4, 0x0);

	/* Enable the NIG in/out to the emac */
	FUNC3(bp, NIG_REG_EMAC0_IN_EN + port*4, 0x1);
	val = 0;
	if ((params->feature_config_flags &
	      FEATURE_CONFIG_PFC_ENABLED) ||
	    (vars->flow_ctrl & BNX2X_FLOW_CTRL_TX))
		val = 1;

	FUNC3(bp, NIG_REG_EMAC0_PAUSE_OUT_EN + port*4, val);
	FUNC3(bp, NIG_REG_EGRESS_EMAC0_OUT_EN + port*4, 0x1);

	FUNC3(bp, NIG_REG_BMAC0_REGS_OUT_EN + port*4, 0x0);

	vars->mac_type = MAC_TYPE_EMAC;
	return 0;
}
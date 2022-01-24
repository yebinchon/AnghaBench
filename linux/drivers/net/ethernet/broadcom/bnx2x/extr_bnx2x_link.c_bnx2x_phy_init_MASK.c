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
struct link_vars {int /*<<< orphan*/  eee_status; int /*<<< orphan*/  link_status; scalar_t__ check_kr2_recovery_cnt; scalar_t__ phy_flags; int /*<<< orphan*/  mac_type; int /*<<< orphan*/  flow_ctrl; int /*<<< orphan*/  duplex; scalar_t__ line_speed; scalar_t__ link_up; scalar_t__ phy_link_up; } ;
struct link_params {int req_fc_auto_adv; int port; int feature_config_flags; int num_phys; int loopback_mode; int /*<<< orphan*/  switch_cfg; int /*<<< orphan*/  link_flags; int /*<<< orphan*/ * req_flow_ctrl; int /*<<< orphan*/ * req_line_speed; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_FLOW_CTRL_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int EINVAL ; 
 int FEATURE_CONFIG_PFC_ENABLED ; 
 int /*<<< orphan*/  LINK_STATUS_PFC_ENABLED ; 
#define  LOOPBACK_BMAC 133 
#define  LOOPBACK_EMAC 132 
#define  LOOPBACK_EXT_PHY 131 
#define  LOOPBACK_UMAC 130 
#define  LOOPBACK_XGXS 129 
#define  LOOPBACK_XMAC 128 
 int /*<<< orphan*/  MAC_TYPE_NONE ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int NIG_MASK_MI_INT ; 
 int NIG_MASK_SERDES0_LINK_STATUS ; 
 int NIG_MASK_XGXS0_LINK10G ; 
 int NIG_MASK_XGXS0_LINK_STATUS ; 
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ; 
 int /*<<< orphan*/  PHY_INITIALIZED ; 
 int /*<<< orphan*/  SWITCH_CFG_10G ; 
 int FUNC2 (struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct link_params*,struct link_vars*,int) ; 
 int FUNC5 (struct link_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct link_params*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC8 (struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC9 (struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC10 (struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC11 (struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC12 (struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC13 (struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC14 (struct link_params*) ; 
 int /*<<< orphan*/  FUNC15 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct link_params*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct link_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct link_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct link_params*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct link_params*,struct link_vars*) ; 

int FUNC22(struct link_params *params, struct link_vars *vars)
{
	int lfa_status;
	struct bnx2x *bp = params->bp;
	FUNC1(NETIF_MSG_LINK, "Phy Initialization started\n");
	FUNC1(NETIF_MSG_LINK, "(1) req_speed %d, req_flowctrl %d\n",
		   params->req_line_speed[0], params->req_flow_ctrl[0]);
	FUNC1(NETIF_MSG_LINK, "(2) req_speed %d, req_flowctrl %d\n",
		   params->req_line_speed[1], params->req_flow_ctrl[1]);
	FUNC1(NETIF_MSG_LINK, "req_adv_flow_ctrl 0x%x\n", params->req_fc_auto_adv);
	vars->link_status = 0;
	vars->phy_link_up = 0;
	vars->link_up = 0;
	vars->line_speed = 0;
	vars->duplex = DUPLEX_FULL;
	vars->flow_ctrl = BNX2X_FLOW_CTRL_NONE;
	vars->mac_type = MAC_TYPE_NONE;
	vars->phy_flags = 0;
	vars->check_kr2_recovery_cnt = 0;
	params->link_flags = PHY_INITIALIZED;
	/* Driver opens NIG-BRB filters */
	FUNC16(params, 1);
	FUNC6(params, true);
	/* Check if link flap can be avoided */
	lfa_status = FUNC5(params);

	if (lfa_status == 0) {
		FUNC1(NETIF_MSG_LINK, "Link Flap Avoidance in progress\n");
		return FUNC2(params, vars);
	}

	FUNC1(NETIF_MSG_LINK, "Cannot avoid link flap lfa_sta=0x%x\n",
		       lfa_status);
	FUNC4(params, vars, lfa_status);

	/* Disable attentions */
	FUNC3(bp, NIG_REG_MASK_INTERRUPT_PORT0 + params->port*4,
		       (NIG_MASK_XGXS0_LINK_STATUS |
			NIG_MASK_XGXS0_LINK10G |
			NIG_MASK_SERDES0_LINK_STATUS |
			NIG_MASK_MI_INT));

	FUNC7(params, vars);

	if (params->feature_config_flags & FEATURE_CONFIG_PFC_ENABLED)
		vars->link_status |= LINK_STATUS_PFC_ENABLED;

	if (params->num_phys == 0) {
		FUNC1(NETIF_MSG_LINK, "No phy found for initialization !!\n");
		return -EINVAL;
	}
	FUNC21(params, vars);

	FUNC1(NETIF_MSG_LINK, "Num of phys on board: %d\n", params->num_phys);
	switch (params->loopback_mode) {
	case LOOPBACK_BMAC:
		FUNC8(params, vars);
		break;
	case LOOPBACK_EMAC:
		FUNC9(params, vars);
		break;
	case LOOPBACK_XMAC:
		FUNC12(params, vars);
		break;
	case LOOPBACK_UMAC:
		FUNC10(params, vars);
		break;
	case LOOPBACK_XGXS:
	case LOOPBACK_EXT_PHY:
		FUNC11(params, vars);
		break;
	default:
		if (!FUNC0(bp)) {
			if (params->switch_cfg == SWITCH_CFG_10G)
				FUNC19(params);
			else
				FUNC15(bp, params->port);
		}
		FUNC13(params, vars);
		FUNC20(30);
		FUNC14(params);
		break;
	}
	FUNC17(params, vars->link_status);

	FUNC18(params, vars->eee_status);
	return 0;
}
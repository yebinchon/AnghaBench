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
struct link_vars {int flow_ctrl; int /*<<< orphan*/  mac_type; } ;
struct link_params {int port; int feature_config_flags; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BNX2X_FLOW_CTRL_TX ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int FEATURE_CONFIG_PFC_ENABLED ; 
 scalar_t__ GRCBASE_MISC ; 
 int /*<<< orphan*/  MAC_TYPE_BMAC ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_2_CLEAR ; 
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_2_SET ; 
 scalar_t__ NIG_REG_BMAC0_IN_EN ; 
 scalar_t__ NIG_REG_BMAC0_OUT_EN ; 
 scalar_t__ NIG_REG_BMAC0_PAUSE_OUT_EN ; 
 scalar_t__ NIG_REG_BMAC0_REGS_OUT_EN ; 
 scalar_t__ NIG_REG_EGRESS_EMAC0_OUT_EN ; 
 scalar_t__ NIG_REG_EGRESS_EMAC0_PORT ; 
 scalar_t__ NIG_REG_EMAC0_IN_EN ; 
 scalar_t__ NIG_REG_EMAC0_PAUSE_OUT_EN ; 
 scalar_t__ NIG_REG_XGXS_LANE_SEL_P0 ; 
 scalar_t__ NIG_REG_XGXS_SERDES0_MODE_SEL ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,scalar_t__,int) ; 
 int FUNC2 (struct link_params*,struct link_vars*,int) ; 
 int FUNC3 (struct link_params*,struct link_vars*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct link_params *params,
			     struct link_vars *vars,
			     u8 is_lb, u8 reset_bmac)
{
	int rc = 0;
	u8 port = params->port;
	struct bnx2x *bp = params->bp;
	u32 val;
	/* Reset and unreset the BigMac */
	if (reset_bmac) {
		FUNC1(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
		       (MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << port));
		FUNC4(1000, 2000);
	}

	FUNC1(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_SET,
	       (MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << port));

	/* Enable access for bmac registers */
	FUNC1(bp, NIG_REG_BMAC0_REGS_OUT_EN + port*4, 0x1);

	/* Enable BMAC according to BMAC type*/
	if (FUNC0(bp))
		rc = FUNC3(params, vars, is_lb);
	else
		rc = FUNC2(params, vars, is_lb);
	FUNC1(bp, NIG_REG_XGXS_SERDES0_MODE_SEL + port*4, 0x1);
	FUNC1(bp, NIG_REG_XGXS_LANE_SEL_P0 + port*4, 0x0);
	FUNC1(bp, NIG_REG_EGRESS_EMAC0_PORT + port*4, 0x0);
	val = 0;
	if ((params->feature_config_flags &
	      FEATURE_CONFIG_PFC_ENABLED) ||
	    (vars->flow_ctrl & BNX2X_FLOW_CTRL_TX))
		val = 1;
	FUNC1(bp, NIG_REG_BMAC0_PAUSE_OUT_EN + port*4, val);
	FUNC1(bp, NIG_REG_EGRESS_EMAC0_OUT_EN + port*4, 0x0);
	FUNC1(bp, NIG_REG_EMAC0_IN_EN + port*4, 0x0);
	FUNC1(bp, NIG_REG_EMAC0_PAUSE_OUT_EN + port*4, 0x0);
	FUNC1(bp, NIG_REG_BMAC0_IN_EN + port*4, 0x1);
	FUNC1(bp, NIG_REG_BMAC0_OUT_EN + port*4, 0x1);

	vars->mac_type = MAC_TYPE_BMAC;
	return rc;
}
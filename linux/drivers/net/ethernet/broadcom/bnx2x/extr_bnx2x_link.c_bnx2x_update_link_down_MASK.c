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
struct link_vars {int eee_status; int /*<<< orphan*/  link_status; scalar_t__ line_speed; int /*<<< orphan*/  mac_type; int /*<<< orphan*/  phy_flags; } ;
struct link_params {int port; int /*<<< orphan*/  chip_id; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  LED_MODE_OFF ; 
 int /*<<< orphan*/  LINK_UPDATE_MASK ; 
 int /*<<< orphan*/  MAC_TYPE_NONE ; 
 scalar_t__ MISC_REG_CPMU_LP_FW_ENABLE_P0 ; 
 scalar_t__ MISC_REG_CPMU_LP_MASK_ENT_P0 ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ; 
 scalar_t__ NIG_REG_NIG_EMAC0_EN ; 
 int /*<<< orphan*/  PHY_PHYSICAL_LINK_FLAG ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,scalar_t__,int) ; 
 int SHMEM_EEE_ACTIVE_BIT ; 
 int SHMEM_EEE_LP_ADV_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct link_params*,struct link_vars*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct link_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct link_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct link_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct link_params*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static int FUNC12(struct link_params *params,
				  struct link_vars *vars)
{
	struct bnx2x *bp = params->bp;
	u8 port = params->port;

	FUNC3(NETIF_MSG_LINK, "Port %x: Link is down\n", port);
	FUNC6(params, vars, LED_MODE_OFF, 0);
	vars->phy_flags &= ~PHY_PHYSICAL_LINK_FLAG;
	/* Indicate no mac active */
	vars->mac_type = MAC_TYPE_NONE;

	/* Update shared memory */
	vars->link_status &= ~LINK_UPDATE_MASK;
	vars->line_speed = 0;
	FUNC9(params, vars->link_status);

	/* Activate nig drain */
	FUNC4(bp, NIG_REG_EGRESS_DRAIN0_MODE + port*4, 1);

	/* Disable emac */
	if (!FUNC2(bp))
		FUNC4(bp, NIG_REG_NIG_EMAC0_EN + port*4, 0);

	FUNC11(10000, 20000);
	/* Reset BigMac/Xmac */
	if (FUNC0(bp) ||
	    FUNC1(bp))
		FUNC5(bp, params->chip_id, params->port, 0);

	if (FUNC2(bp)) {
		/* Prevent LPI Generation by chip */
		FUNC4(bp, MISC_REG_CPMU_LP_FW_ENABLE_P0 + (params->port << 2),
		       0);
		FUNC4(bp, MISC_REG_CPMU_LP_MASK_ENT_P0 + (params->port << 2),
		       0);
		vars->eee_status &= ~(SHMEM_EEE_LP_ADV_STATUS_MASK |
				      SHMEM_EEE_ACTIVE_BIT);

		FUNC10(params, vars->eee_status);
		FUNC8(params, 0);
		FUNC7(params, 0);
	}

	return 0;
}
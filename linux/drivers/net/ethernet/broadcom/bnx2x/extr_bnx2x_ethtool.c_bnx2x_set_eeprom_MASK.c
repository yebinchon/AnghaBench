#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; int /*<<< orphan*/  len; int /*<<< orphan*/  offset; int /*<<< orphan*/  cmd; } ;
struct TYPE_9__ {int /*<<< orphan*/ * phy; } ;
struct TYPE_6__ {int /*<<< orphan*/  pmf; } ;
struct bnx2x {scalar_t__ state; TYPE_4__ link_params; int /*<<< orphan*/  link_vars; TYPE_1__ port; } ;
struct TYPE_8__ {TYPE_2__* port_hw_config; } ;
struct TYPE_7__ {int /*<<< orphan*/  external_phy_config; } ;

/* Variables and functions */
 int BNX2X_MSG_ETHTOOL ; 
 int BNX2X_MSG_NVM ; 
 scalar_t__ BNX2X_STATE_OPEN ; 
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int EAGAIN ; 
 int EINVAL ; 
 size_t EXT_PHY1 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_0 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_HIGH ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_LOW ; 
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_SFX7101 ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATS_EVENT_STOP ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct bnx2x*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 TYPE_3__ dev_info ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 struct bnx2x* FUNC17 (struct net_device*) ; 

__attribute__((used)) static int FUNC18(struct net_device *dev,
			    struct ethtool_eeprom *eeprom, u8 *eebuf)
{
	struct bnx2x *bp = FUNC17(dev);
	int port = FUNC0(bp);
	int rc = 0;
	u32 ext_phy_config;

	if (!FUNC7(bp)) {
		FUNC1(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
		   "cannot access eeprom when the interface is down\n");
		return -EAGAIN;
	}

	FUNC1(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM, "ethtool_eeprom: cmd %d\n"
	   "  magic 0x%x  offset 0x%x (%d)  len 0x%x (%d)\n",
	   eeprom->cmd, eeprom->magic, eeprom->offset, eeprom->offset,
	   eeprom->len, eeprom->len);

	/* parameters already validated in ethtool_set_eeprom */

	/* PHY eeprom can be accessed only by the PMF */
	if ((eeprom->magic >= 0x50485900) && (eeprom->magic <= 0x504859FF) &&
	    !bp->port.pmf) {
		FUNC1(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
		   "wrong magic or interface is not pmf\n");
		return -EINVAL;
	}

	ext_phy_config =
		FUNC2(bp,
			 dev_info.port_hw_config[port].external_phy_config);

	if (eeprom->magic == 0x50485950) {
		/* 'PHYP' (0x50485950): prepare phy for FW upgrade */
		FUNC15(bp, STATS_EVENT_STOP);

		FUNC4(bp);
		rc |= FUNC9(&bp->link_params,
				       &bp->link_vars, 0);
		if (FUNC3(ext_phy_config) ==
					PORT_HW_CFG_XGXS_EXT_PHY_TYPE_SFX7101)
			FUNC13(bp, MISC_REGISTERS_GPIO_0,
				       MISC_REGISTERS_GPIO_HIGH, port);
		FUNC12(bp);
		FUNC8(bp);

	} else if (eeprom->magic == 0x50485952) {
		/* 'PHYR' (0x50485952): re-init link after FW upgrade */
		if (bp->state == BNX2X_STATE_OPEN) {
			FUNC4(bp);
			rc |= FUNC9(&bp->link_params,
					       &bp->link_vars, 1);

			rc |= FUNC11(&bp->link_params,
					     &bp->link_vars);
			FUNC12(bp);
			FUNC5(bp);
		}
	} else if (eeprom->magic == 0x53985943) {
		/* 'PHYC' (0x53985943): PHY FW upgrade completed */
		if (FUNC3(ext_phy_config) ==
				       PORT_HW_CFG_XGXS_EXT_PHY_TYPE_SFX7101) {

			/* DSP Remove Download Mode */
			FUNC13(bp, MISC_REGISTERS_GPIO_0,
				       MISC_REGISTERS_GPIO_LOW, port);

			FUNC4(bp);

			FUNC14(bp,
						&bp->link_params.phy[EXT_PHY1]);

			/* wait 0.5 sec to allow it to run */
			FUNC16(500);
			FUNC6(bp, port);
			FUNC16(500);
			FUNC12(bp);
		}
	} else
		rc = FUNC10(bp, eeprom->offset, eebuf, eeprom->len);

	return rc;
}
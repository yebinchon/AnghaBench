#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct memac_cfg {int /*<<< orphan*/  max_frame_length; struct fixed_phy_status* fixed_link; scalar_t__ reset_on_init; } ;
struct TYPE_7__ {int major; int minor; } ;
struct fman_mac {scalar_t__ phy_if; struct memac_cfg* memac_drv_param; int /*<<< orphan*/  mac_id; int /*<<< orphan*/  fm; void* unicast_addr_hash; void* multicast_addr_hash; TYPE_3__* pcsphy; scalar_t__ basex_if; TYPE_4__* regs; TYPE_1__ fm_rev_info; int /*<<< orphan*/  exceptions; int /*<<< orphan*/  max_speed; int /*<<< orphan*/  addr; } ;
struct fixed_phy_status {int dummy; } ;
typedef  scalar_t__ enet_addr_t ;
struct TYPE_10__ {int /*<<< orphan*/  command_config; } ;
struct TYPE_8__ {int addr; } ;
struct TYPE_9__ {TYPE_2__ mdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CFG_CRC_FWD ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FMAN_INTR_TYPE_ERR ; 
 int /*<<< orphan*/  FMAN_INTR_TYPE_NORMAL ; 
 int /*<<< orphan*/  FMAN_MOD_MAC ; 
 int /*<<< orphan*/  HASH_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ PHY_INTERFACE_MODE_QSGMII ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fman_mac*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fman_mac*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fman_mac*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,struct memac_cfg*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct memac_cfg*) ; 
 int /*<<< orphan*/  FUNC11 (struct memac_cfg*) ; 
 int /*<<< orphan*/  memac_err_exception ; 
 int /*<<< orphan*/  memac_exception ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (struct fman_mac*,struct fixed_phy_status*) ; 
 int /*<<< orphan*/  FUNC15 (struct fman_mac*) ; 

int FUNC16(struct fman_mac *memac)
{
	struct memac_cfg *memac_drv_param;
	u8 i;
	enet_addr_t eth_addr;
	bool slow_10g_if = false;
	struct fixed_phy_status *fixed_link;
	int err;
	u32 reg32 = 0;

	if (FUNC10(memac->memac_drv_param))
		return -EINVAL;

	err = FUNC3(memac);
	if (err)
		return err;

	memac_drv_param = memac->memac_drv_param;

	if (memac->fm_rev_info.major == 6 && memac->fm_rev_info.minor == 4)
		slow_10g_if = true;

	/* First, reset the MAC if desired. */
	if (memac_drv_param->reset_on_init) {
		err = FUNC13(memac->regs);
		if (err) {
			FUNC12("mEMAC reset failed\n");
			return err;
		}
	}

	/* MAC Address */
	FUNC0(memac->addr, eth_addr);
	FUNC1(memac->regs, (u8 *)eth_addr, 0);

	fixed_link = memac_drv_param->fixed_link;

	FUNC7(memac->regs, memac->memac_drv_param, memac->phy_if,
	     memac->max_speed, slow_10g_if, memac->exceptions);

	/* FM_RX_FIFO_CORRUPT_ERRATA_10GMAC_A006320 errata workaround
	 * Exists only in FMan 6.0 and 6.3.
	 */
	if ((memac->fm_rev_info.major == 6) &&
	    ((memac->fm_rev_info.minor == 0) ||
	    (memac->fm_rev_info.minor == 3))) {
		/* MAC strips CRC from received frames - this workaround
		 * should decrease the likelihood of bug appearance
		 */
		reg32 = FUNC8(&memac->regs->command_config);
		reg32 &= ~CMD_CFG_CRC_FWD;
		FUNC9(reg32, &memac->regs->command_config);
	}

	if (memac->phy_if == PHY_INTERFACE_MODE_SGMII) {
		/* Configure internal SGMII PHY */
		if (memac->basex_if)
			FUNC15(memac);
		else
			FUNC14(memac, fixed_link);
	} else if (memac->phy_if == PHY_INTERFACE_MODE_QSGMII) {
		/* Configure 4 internal SGMII PHYs */
		for (i = 0; i < 4; i++) {
			u8 qsmgii_phy_addr, phy_addr;
			/* QSGMII PHY address occupies 3 upper bits of 5-bit
			 * phy_address; the lower 2 bits are used to extend
			 * register address space and access each one of 4
			 * ports inside QSGMII.
			 */
			phy_addr = memac->pcsphy->mdio.addr;
			qsmgii_phy_addr = (u8)((phy_addr << 2) | i);
			memac->pcsphy->mdio.addr = qsmgii_phy_addr;
			if (memac->basex_if)
				FUNC15(memac);
			else
				FUNC14(memac, fixed_link);

			memac->pcsphy->mdio.addr = phy_addr;
		}
	}

	/* Max Frame Length */
	err = FUNC5(memac->fm, memac->mac_id,
				     memac_drv_param->max_frame_length);
	if (err) {
		FUNC12("settings Mac max frame length is FAILED\n");
		return err;
	}

	memac->multicast_addr_hash = FUNC2(HASH_TABLE_SIZE);
	if (!memac->multicast_addr_hash) {
		FUNC6(memac);
		FUNC12("allocation hash table is FAILED\n");
		return -ENOMEM;
	}

	memac->unicast_addr_hash = FUNC2(HASH_TABLE_SIZE);
	if (!memac->unicast_addr_hash) {
		FUNC6(memac);
		FUNC12("allocation hash table is FAILED\n");
		return -ENOMEM;
	}

	FUNC4(memac->fm, FMAN_MOD_MAC, memac->mac_id,
			   FMAN_INTR_TYPE_ERR, memac_err_exception, memac);

	FUNC4(memac->fm, FMAN_MOD_MAC, memac->mac_id,
			   FMAN_INTR_TYPE_NORMAL, memac_exception, memac);

	FUNC11(memac_drv_param);
	memac->memac_drv_param = NULL;

	return 0;
}
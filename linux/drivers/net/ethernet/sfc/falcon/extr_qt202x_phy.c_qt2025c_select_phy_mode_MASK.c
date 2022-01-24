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
typedef  int uint16_t ;
struct qt202x_phy_data {int firmware_ver; } ;
struct falcon_board {scalar_t__ major; int minor; } ;
struct ef4_nic {scalar_t__ loopback_mode; int /*<<< orphan*/  net_dev; struct qt202x_phy_data* phy_data; } ;

/* Variables and functions */
 scalar_t__ LOOPBACK_NONE ; 
 int /*<<< orphan*/  PMA_PMD_MODE_REG ; 
 int PMA_PMD_RXIN_SEL_LBN ; 
 int FUNC0 (struct ef4_nic*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int,int,int) ; 
 struct falcon_board* FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ef4_nic*) ; 
 int FUNC8 (struct ef4_nic*) ; 

__attribute__((used)) static int FUNC9(struct ef4_nic *efx)
{
	struct qt202x_phy_data *phy_data = efx->phy_data;
	struct falcon_board *board = FUNC3(efx);
	int reg, rc, i;
	uint16_t phy_op_mode;

	/* Only 2.0.1.0+ PHY firmware supports the more optimal SFP+
	 * Self-Configure mode.  Don't attempt any switching if we encounter
	 * older firmware. */
	if (phy_data->firmware_ver < 0x02000100)
		return 0;

	/* In general we will get optimal behaviour in "SFP+ Self-Configure"
	 * mode; however, that powers down most of the PHY when no module is
	 * present, so we must use a different mode (any fixed mode will do)
	 * to be sure that loopbacks will work. */
	phy_op_mode = (efx->loopback_mode == LOOPBACK_NONE) ? 0x0038 : 0x0020;

	/* Only change mode if really necessary */
	reg = FUNC0(efx, 1, 0xc319);
	if ((reg & 0x0038) == phy_op_mode)
		return 0;
	FUNC5(efx, hw, efx->net_dev, "Switching PHY to mode 0x%04x\n",
		  phy_op_mode);

	/* This sequence replicates the register writes configured in the boot
	 * EEPROM (including the differences between board revisions), except
	 * that the operating mode is changed, and the PHY is prevented from
	 * unnecessarily reloading the main firmware image again. */
	FUNC2(efx, 1, 0xc300, 0x0000);
	/* (Note: this portion of the boot EEPROM sequence, which bit-bashes 9
	 * STOPs onto the firmware/module I2C bus to reset it, varies across
	 * board revisions, as the bus is connected to different GPIO/LED
	 * outputs on the PHY.) */
	if (board->major == 0 && board->minor < 2) {
		FUNC2(efx, 1, 0xc303, 0x4498);
		for (i = 0; i < 9; i++) {
			FUNC2(efx, 1, 0xc303, 0x4488);
			FUNC2(efx, 1, 0xc303, 0x4480);
			FUNC2(efx, 1, 0xc303, 0x4490);
			FUNC2(efx, 1, 0xc303, 0x4498);
		}
	} else {
		FUNC2(efx, 1, 0xc303, 0x0920);
		FUNC2(efx, 1, 0xd008, 0x0004);
		for (i = 0; i < 9; i++) {
			FUNC2(efx, 1, 0xc303, 0x0900);
			FUNC2(efx, 1, 0xd008, 0x0005);
			FUNC2(efx, 1, 0xc303, 0x0920);
			FUNC2(efx, 1, 0xd008, 0x0004);
		}
		FUNC2(efx, 1, 0xc303, 0x4900);
	}
	FUNC2(efx, 1, 0xc303, 0x4900);
	FUNC2(efx, 1, 0xc302, 0x0004);
	FUNC2(efx, 1, 0xc316, 0x0013);
	FUNC2(efx, 1, 0xc318, 0x0054);
	FUNC2(efx, 1, 0xc319, phy_op_mode);
	FUNC2(efx, 1, 0xc31a, 0x0098);
	FUNC2(efx, 3, 0x0026, 0x0e00);
	FUNC2(efx, 3, 0x0027, 0x0013);
	FUNC2(efx, 3, 0x0028, 0xa528);
	FUNC2(efx, 1, 0xd006, 0x000a);
	FUNC2(efx, 1, 0xd007, 0x0009);
	FUNC2(efx, 1, 0xd008, 0x0004);
	/* This additional write is not present in the boot EEPROM.  It
	 * prevents the PHY's internal boot ROM doing another pointless (and
	 * slow) reload of the firmware image (the microcontroller's code
	 * memory is not affected by the microcontroller reset). */
	FUNC2(efx, 1, 0xc317, 0x00ff);
	/* PMA/PMD loopback sets RXIN to inverse polarity and the firmware
	 * restart doesn't reset it. We need to do that ourselves. */
	FUNC1(efx, 1, PMA_PMD_MODE_REG,
			  1 << PMA_PMD_RXIN_SEL_LBN, false);
	FUNC2(efx, 1, 0xc300, 0x0002);
	FUNC4(20);

	/* Restart microcontroller execution of firmware from RAM */
	FUNC7(efx);

	/* Wait for the microcontroller to be ready again */
	rc = FUNC8(efx);
	if (rc < 0) {
		FUNC6(efx, hw, efx->net_dev,
			  "PHY microcontroller reset during mode switch "
			  "timed out\n");
		return rc;
	}

	return 0;
}
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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct atl1e_hw {int /*<<< orphan*/ * perm_mac_addr; } ;

/* Variables and functions */
 int AT_ERR_EEPROM ; 
 int AT_ERR_TIMEOUT ; 
 scalar_t__ FUNC0 (struct atl1e_hw*,scalar_t__) ; 
 scalar_t__ AT_TWSI_EEPROM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct atl1e_hw*,scalar_t__,scalar_t__) ; 
 int ETH_ALEN ; 
 scalar_t__ REG_MAC_STA_ADDR ; 
 scalar_t__ REG_TWSI_CTRL ; 
 scalar_t__ TWSI_CTRL_SW_LDSTART ; 
 int /*<<< orphan*/  FUNC2 (struct atl1e_hw*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct atl1e_hw *hw)
{
	u32 addr[2];
	u32 i;
	u32 twsi_ctrl_data;
	u8  eth_addr[ETH_ALEN];

	if (FUNC3(hw->perm_mac_addr))
		return 0;

	/* init */
	addr[0] = addr[1] = 0;

	if (!FUNC2(hw)) {
		/* eeprom exist */
		twsi_ctrl_data = FUNC0(hw, REG_TWSI_CTRL);
		twsi_ctrl_data |= TWSI_CTRL_SW_LDSTART;
		FUNC1(hw, REG_TWSI_CTRL, twsi_ctrl_data);
		for (i = 0; i < AT_TWSI_EEPROM_TIMEOUT; i++) {
			FUNC5(10);
			twsi_ctrl_data = FUNC0(hw, REG_TWSI_CTRL);
			if ((twsi_ctrl_data & TWSI_CTRL_SW_LDSTART) == 0)
				break;
		}
		if (i >= AT_TWSI_EEPROM_TIMEOUT)
			return AT_ERR_TIMEOUT;
	}

	/* maybe MAC-address is from BIOS */
	addr[0] = FUNC0(hw, REG_MAC_STA_ADDR);
	addr[1] = FUNC0(hw, REG_MAC_STA_ADDR + 4);
	*(u32 *) &eth_addr[2] = FUNC7(addr[0]);
	*(u16 *) &eth_addr[0] = FUNC6(*(u16 *)&addr[1]);

	if (FUNC3(eth_addr)) {
		FUNC4(hw->perm_mac_addr, eth_addr, ETH_ALEN);
		return 0;
	}

	return AT_ERR_EEPROM;
}
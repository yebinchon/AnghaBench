#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_EXT ; 
 int E1000_CTRL_EXT_LPCD ; 
 int E1000_CTRL_LANPHYPC_OVERRIDE ; 
 int E1000_CTRL_LANPHYPC_VALUE ; 
 int E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC ; 
 int E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK ; 
 int /*<<< orphan*/  FEXTNVM3 ; 
 scalar_t__ e1000_pch_lpt ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct e1000_hw *hw)
{
	u32 mac_reg;

	/* Set Phy Config Counter to 50msec */
	mac_reg = FUNC1(FEXTNVM3);
	mac_reg &= ~E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK;
	mac_reg |= E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC;
	FUNC2(FEXTNVM3, mac_reg);

	/* Toggle LANPHYPC Value bit */
	mac_reg = FUNC1(CTRL);
	mac_reg |= E1000_CTRL_LANPHYPC_OVERRIDE;
	mac_reg &= ~E1000_CTRL_LANPHYPC_VALUE;
	FUNC2(CTRL, mac_reg);
	FUNC0();
	FUNC4(10, 20);
	mac_reg &= ~E1000_CTRL_LANPHYPC_OVERRIDE;
	FUNC2(CTRL, mac_reg);
	FUNC0();

	if (hw->mac.type < e1000_pch_lpt) {
		FUNC3(50);
	} else {
		u16 count = 20;

		do {
			FUNC4(5000, 6000);
		} while (!(FUNC1(CTRL_EXT) & E1000_CTRL_EXT_LPCD) && count--);

		FUNC3(30);
	}
}
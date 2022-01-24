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
typedef  int u32 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ E1000_ERR_PHY ; 
 int E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP ; 
 int /*<<< orphan*/  EXTCNF_CTRL ; 
 scalar_t__ MDIO_OWNERSHIP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw)
{
	u32 extcnf_ctrl;
	s32 i = 0;

	extcnf_ctrl = FUNC2(EXTCNF_CTRL);
	do {
		extcnf_ctrl |= E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP;
		FUNC3(EXTCNF_CTRL, extcnf_ctrl);
		extcnf_ctrl = FUNC2(EXTCNF_CTRL);

		if (extcnf_ctrl & E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP)
			break;

		FUNC4(2000, 4000);
		i++;
	} while (i < MDIO_OWNERSHIP_TIMEOUT);

	if (i == MDIO_OWNERSHIP_TIMEOUT) {
		/* Release semaphores */
		FUNC0(hw);
		FUNC1("Driver can't access the PHY\n");
		return -E1000_ERR_PHY;
	}

	return 0;
}
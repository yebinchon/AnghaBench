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
struct atl1c_hw {int ctrl_flags; } ;

/* Variables and functions */
 int ATL1C_FPGA_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_MDIO_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_hw*) ; 

void FUNC2(struct atl1c_hw *hw)
{
	if (!(hw->ctrl_flags & ATL1C_FPGA_VERSION))
		return;

	FUNC0(hw, REG_MDIO_CTRL, 0);
	FUNC1(hw);
}
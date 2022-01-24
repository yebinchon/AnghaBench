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
struct igc_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IGC_CTRL ; 
 int IGC_CTRL_DEV_RST ; 
 int /*<<< orphan*/  IGC_ICR ; 
 int /*<<< orphan*/  IGC_IMC ; 
 int /*<<< orphan*/  IGC_RCTL ; 
 int /*<<< orphan*/  IGC_TCTL ; 
 int IGC_TCTL_PSP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct igc_hw*) ; 
 scalar_t__ FUNC2 (struct igc_hw*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static s32 FUNC7(struct igc_hw *hw)
{
	s32 ret_val;
	u32 ctrl;

	/* Prevent the PCI-E bus from sticking if there is no TLP connection
	 * on the last TLP read/write transaction when MAC is reset.
	 */
	ret_val = FUNC1(hw);
	if (ret_val)
		FUNC0("PCI-E Master disable polling has failed.\n");

	FUNC0("Masking off all interrupts\n");
	FUNC5(IGC_IMC, 0xffffffff);

	FUNC5(IGC_RCTL, 0);
	FUNC5(IGC_TCTL, IGC_TCTL_PSP);
	FUNC6();

	FUNC4(10000, 20000);

	ctrl = FUNC3(IGC_CTRL);

	FUNC0("Issuing a global reset to MAC\n");
	FUNC5(IGC_CTRL, ctrl | IGC_CTRL_DEV_RST);

	ret_val = FUNC2(hw);
	if (ret_val) {
		/* When auto config read does not complete, do not
		 * return with an error. This can happen in situations
		 * where there is no eeprom and prevents getting link.
		 */
		FUNC0("Auto Read Done did not complete\n");
	}

	/* Clear any pending interrupt events. */
	FUNC5(IGC_IMC, 0xffffffff);
	FUNC3(IGC_ICR);

	return ret_val;
}
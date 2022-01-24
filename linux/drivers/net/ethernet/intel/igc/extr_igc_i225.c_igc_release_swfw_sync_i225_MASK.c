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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct igc_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGC_SW_FW_SYNC ; 
 scalar_t__ FUNC0 (struct igc_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct igc_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct igc_hw *hw, u16 mask)
{
	u32 swfw_sync;

	while (FUNC0(hw))
		; /* Empty */

	swfw_sync = FUNC2(IGC_SW_FW_SYNC);
	swfw_sync &= ~mask;
	FUNC3(IGC_SW_FW_SYNC, swfw_sync);

	FUNC1(hw);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct e1000_adapter {TYPE_1__* pdev; struct e1000_hw hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NVM_INIT_CONTROL2_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ e1000_82573 ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static void FUNC4(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	int ret_val;
	u16 buf = 0;

	if (hw->mac.type != e1000_82573)
		return;

	ret_val = FUNC2(hw, NVM_INIT_CONTROL2_REG, 1, &buf);
	FUNC3(&buf);
	if (!ret_val && (!(buf & FUNC0(0)))) {
		/* Deep Smart Power Down (DSPD) */
		FUNC1(&adapter->pdev->dev,
			 "Warning: detected DSPD enabled in EEPROM\n");
	}
}
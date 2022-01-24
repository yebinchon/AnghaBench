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
struct igb_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int E1000_CTRL_EXT_DRV_LOAD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct igb_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl_ext;

	/* Let firmware take over control of h/w */
	ctrl_ext = FUNC0(E1000_CTRL_EXT);
	FUNC1(E1000_CTRL_EXT,
			ctrl_ext & ~E1000_CTRL_EXT_DRV_LOAD);
}
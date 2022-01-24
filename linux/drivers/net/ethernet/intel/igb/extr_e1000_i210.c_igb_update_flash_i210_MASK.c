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
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_FLUPD_I210 ; 
 int E1000_ERR_NVM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct e1000_hw*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC4(struct e1000_hw *hw)
{
	s32 ret_val = 0;
	u32 flup;

	ret_val = FUNC1(hw);
	if (ret_val == -E1000_ERR_NVM) {
		FUNC0("Flash update time out\n");
		goto out;
	}

	flup = FUNC2(E1000_EECD) | E1000_EECD_FLUPD_I210;
	FUNC3(E1000_EECD, flup);

	ret_val = FUNC1(hw);
	if (ret_val)
		FUNC0("Flash update time out\n");
	else
		FUNC0("Flash update complete\n");

out:
	return ret_val;
}
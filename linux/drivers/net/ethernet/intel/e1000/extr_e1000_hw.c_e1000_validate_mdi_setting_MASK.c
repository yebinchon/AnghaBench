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
struct e1000_hw {int mdix; int /*<<< orphan*/  autoneg; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_ERR_CONFIG ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

s32 FUNC1(struct e1000_hw *hw)
{
	if (!hw->autoneg && (hw->mdix == 0 || hw->mdix == 3)) {
		FUNC0("Invalid MDI setting detected\n");
		hw->mdix = 1;
		return -E1000_ERR_CONFIG;
	}
	return E1000_SUCCESS;
}
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
struct atl1c_hw {int /*<<< orphan*/  perm_mac_addr; int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int FUNC0 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct atl1c_hw *hw)
{
	int err = 0;

	err = FUNC0(hw);
	if (err)
		FUNC1(hw->perm_mac_addr);

	FUNC2(hw->mac_addr, hw->perm_mac_addr, sizeof(hw->perm_mac_addr));
	return err;
}
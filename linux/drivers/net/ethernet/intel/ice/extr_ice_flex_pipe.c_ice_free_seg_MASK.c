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
struct ice_hw {int /*<<< orphan*/ * seg; scalar_t__ pkg_size; int /*<<< orphan*/ * pkg_copy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*) ; 

void FUNC2(struct ice_hw *hw)
{
	if (hw->pkg_copy) {
		FUNC0(FUNC1(hw), hw->pkg_copy);
		hw->pkg_copy = NULL;
		hw->pkg_size = 0;
	}
	hw->seg = NULL;
}
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
struct ice_hw {int /*<<< orphan*/ * port_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ice_hw*) ; 

void FUNC10(struct ice_hw *hw)
{
	FUNC2(hw);

	FUNC8(hw);
	FUNC9(hw);
	FUNC6(hw);
	FUNC5(hw);

	if (hw->port_info) {
		FUNC0(FUNC7(hw), hw->port_info);
		hw->port_info = NULL;
	}

	/* Attempt to disable FW logging before shutting down control queues */
	FUNC1(hw, false);
	FUNC4(hw);

	/* Clear VSI contexts if not already cleared */
	FUNC3(hw);
}
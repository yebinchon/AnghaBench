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
struct ice_hw {scalar_t__ port_info; int /*<<< orphan*/  mailboxq; } ;
struct ice_pf {int num_alloc_vfs; int /*<<< orphan*/  state; int /*<<< orphan*/ * vf; struct ice_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ICE_PREPARED_FOR_RESET ; 
 scalar_t__ FUNC0 (struct ice_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_pf*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct ice_pf *pf)
{
	struct ice_hw *hw = &pf->hw;
	int i;

	/* already prepared for reset */
	if (FUNC8(__ICE_PREPARED_FOR_RESET, pf->state))
		return;

	/* Notify VFs of impending reset */
	if (FUNC0(hw, &hw->mailboxq))
		FUNC6(pf);

	/* Disable VFs until reset is completed */
	for (i = 0; i < pf->num_alloc_vfs; i++)
		FUNC4(&pf->vf[i]);

	/* clear SW filtering DB */
	FUNC1(hw);
	/* disable the VSIs and their queues that are not already DOWN */
	FUNC2(pf, false);

	if (hw->port_info)
		FUNC3(hw->port_info);

	FUNC5(hw);

	FUNC7(__ICE_PREPARED_FOR_RESET, pf->state);
}
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
struct ice_hw {int /*<<< orphan*/  adminq; } ;
struct ice_pf {int /*<<< orphan*/  state; struct ice_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_CTL_Q_ADMIN ; 
 int /*<<< orphan*/  __ICE_ADMINQ_EVENT_PENDING ; 
 scalar_t__ FUNC0 (struct ice_pf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ice_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ice_pf *pf)
{
	struct ice_hw *hw = &pf->hw;

	if (!FUNC4(__ICE_ADMINQ_EVENT_PENDING, pf->state))
		return;

	if (FUNC0(pf, ICE_CTL_Q_ADMIN))
		return;

	FUNC1(__ICE_ADMINQ_EVENT_PENDING, pf->state);

	/* There might be a situation where new messages arrive to a control
	 * queue between processing the last message and clearing the
	 * EVENT_PENDING bit. So before exiting, check queue head again (using
	 * ice_ctrlq_pending) and process new messages if any.
	 */
	if (FUNC2(hw, &hw->adminq))
		FUNC0(pf, ICE_CTL_Q_ADMIN);

	FUNC3(hw);
}
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
struct ice_hw {int /*<<< orphan*/  mailboxq; } ;
struct ice_pf {int /*<<< orphan*/  state; struct ice_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_CTL_Q_MAILBOX ; 
 int /*<<< orphan*/  __ICE_MAILBOXQ_EVENT_PENDING ; 
 scalar_t__ FUNC0 (struct ice_pf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ice_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ice_pf *pf)
{
	struct ice_hw *hw = &pf->hw;

	if (!FUNC4(__ICE_MAILBOXQ_EVENT_PENDING, pf->state))
		return;

	if (FUNC0(pf, ICE_CTL_Q_MAILBOX))
		return;

	FUNC1(__ICE_MAILBOXQ_EVENT_PENDING, pf->state);

	if (FUNC2(hw, &hw->mailboxq))
		FUNC0(pf, ICE_CTL_Q_MAILBOX);

	FUNC3(hw);
}
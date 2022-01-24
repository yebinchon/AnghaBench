#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct i40e_adminq_ring {scalar_t__ next_to_clean; scalar_t__ count; int /*<<< orphan*/  head; } ;
struct TYPE_2__ {struct i40e_adminq_ring asq; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct i40e_asq_cmd_details {scalar_t__ callback; } ;
struct i40e_aq_desc {scalar_t__ callback; } ;
typedef  int /*<<< orphan*/  (* I40E_ADMINQ_CALLBACK ) (struct i40e_hw*,struct i40e_asq_cmd_details*) ;

/* Variables and functions */
 struct i40e_asq_cmd_details* FUNC0 (struct i40e_adminq_ring,scalar_t__) ; 
 struct i40e_asq_cmd_details* FUNC1 (struct i40e_adminq_ring,scalar_t__) ; 
 int /*<<< orphan*/  I40E_DEBUG_AQ_COMMAND ; 
 scalar_t__ FUNC2 (struct i40e_adminq_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_asq_cmd_details*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC6(struct i40e_hw *hw)
{
	struct i40e_adminq_ring *asq = &(hw->aq.asq);
	struct i40e_asq_cmd_details *details;
	u16 ntc = asq->next_to_clean;
	struct i40e_aq_desc desc_cb;
	struct i40e_aq_desc *desc;

	desc = FUNC0(*asq, ntc);
	details = FUNC1(*asq, ntc);
	while (FUNC5(hw, hw->aq.asq.head) != ntc) {
		FUNC3(hw, I40E_DEBUG_AQ_COMMAND,
			   "ntc %d head %d.\n", ntc, FUNC5(hw, hw->aq.asq.head));

		if (details->callback) {
			I40E_ADMINQ_CALLBACK cb_func =
					(I40E_ADMINQ_CALLBACK)details->callback;
			desc_cb = *desc;
			cb_func(hw, &desc_cb);
		}
		FUNC4(desc, 0, sizeof(*desc));
		FUNC4(details, 0, sizeof(*details));
		ntc++;
		if (ntc == asq->count)
			ntc = 0;
		desc = FUNC0(*asq, ntc);
		details = FUNC1(*asq, ntc);
	}

	asq->next_to_clean = ntc;

	return FUNC2(asq);
}
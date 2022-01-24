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
struct ice_ring_container {void* current_itr; int /*<<< orphan*/  itr_idx; void* target_itr; void* next_update; scalar_t__ itr_setting; } ;
struct ice_q_vector {int /*<<< orphan*/  reg_idx; struct ice_ring_container tx; scalar_t__ num_ring_tx; struct ice_ring_container rx; scalar_t__ num_ring_rx; } ;
struct ice_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ICE_DFLT_RX_ITR ; 
 scalar_t__ ICE_DFLT_TX_ITR ; 
 int ICE_ITR_GRAN_S ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct ice_hw *hw, struct ice_q_vector *q_vector)
{
	FUNC3(hw);

	if (q_vector->num_ring_rx) {
		struct ice_ring_container *rc = &q_vector->rx;

		/* if this value is set then don't overwrite with default */
		if (!rc->itr_setting)
			rc->itr_setting = ICE_DFLT_RX_ITR;

		rc->target_itr = FUNC2(rc->itr_setting);
		rc->next_update = jiffies + 1;
		rc->current_itr = rc->target_itr;
		FUNC4(hw, FUNC0(rc->itr_idx, q_vector->reg_idx),
		     FUNC1(rc->current_itr) >> ICE_ITR_GRAN_S);
	}

	if (q_vector->num_ring_tx) {
		struct ice_ring_container *rc = &q_vector->tx;

		/* if this value is set then don't overwrite with default */
		if (!rc->itr_setting)
			rc->itr_setting = ICE_DFLT_TX_ITR;

		rc->target_itr = FUNC2(rc->itr_setting);
		rc->next_update = jiffies + 1;
		rc->current_itr = rc->target_itr;
		FUNC4(hw, FUNC0(rc->itr_idx, q_vector->reg_idx),
		     FUNC1(rc->current_itr) >> ICE_ITR_GRAN_S);
	}
}
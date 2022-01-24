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
struct ice_vsi {TYPE_1__* back; } ;
struct ice_q_vector {scalar_t__ itr_countdown; int /*<<< orphan*/  reg_idx; scalar_t__ num_ring_tx; scalar_t__ num_ring_rx; struct ice_vsi* vsi; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ICE_IN_WB_ON_ITR_MODE ; 
 int /*<<< orphan*/  ICE_RX_ITR ; 
 int /*<<< orphan*/  ICE_TX_ITR ; 
 int /*<<< orphan*/  ICE_WB_ON_ITR_USECS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ice_q_vector *q_vector)
{
	struct ice_vsi *vsi = q_vector->vsi;

	/* already in WB_ON_ITR mode no need to change it */
	if (q_vector->itr_countdown == ICE_IN_WB_ON_ITR_MODE)
		return;

	if (q_vector->num_ring_rx)
		FUNC2(&vsi->back->hw, FUNC0(q_vector->reg_idx),
		     FUNC1(ICE_WB_ON_ITR_USECS,
						 ICE_RX_ITR));

	if (q_vector->num_ring_tx)
		FUNC2(&vsi->back->hw, FUNC0(q_vector->reg_idx),
		     FUNC1(ICE_WB_ON_ITR_USECS,
						 ICE_TX_ITR));

	q_vector->itr_countdown = ICE_IN_WB_ON_ITR_MODE;
}
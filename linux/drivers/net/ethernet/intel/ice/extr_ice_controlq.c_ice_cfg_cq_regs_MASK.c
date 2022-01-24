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
typedef  int u16 ;
struct ice_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pa; } ;
struct ice_ctl_q_ring {int len_ena_mask; TYPE_1__ desc_buf; int /*<<< orphan*/  bal; int /*<<< orphan*/  bah; int /*<<< orphan*/  len; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int ICE_ERR_AQ_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum ice_status
FUNC4(struct ice_hw *hw, struct ice_ctl_q_ring *ring, u16 num_entries)
{
	/* Clear Head and Tail */
	FUNC3(hw, ring->head, 0);
	FUNC3(hw, ring->tail, 0);

	/* set starting point */
	FUNC3(hw, ring->len, (num_entries | ring->len_ena_mask));
	FUNC3(hw, ring->bal, FUNC0(ring->desc_buf.pa));
	FUNC3(hw, ring->bah, FUNC2(ring->desc_buf.pa));

	/* Check one register to verify that config was applied */
	if (FUNC1(hw, ring->bal) != FUNC0(ring->desc_buf.pa))
		return ICE_ERR_AQ_ERROR;

	return 0;
}
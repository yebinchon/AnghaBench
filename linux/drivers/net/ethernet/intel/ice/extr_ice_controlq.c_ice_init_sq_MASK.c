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
struct ice_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ count; scalar_t__ next_to_clean; scalar_t__ next_to_use; } ;
struct ice_ctl_q_info {scalar_t__ num_sq_entries; TYPE_1__ sq; int /*<<< orphan*/  sq_buf_size; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int ICE_ERR_CFG ; 
 int ICE_ERR_NOT_READY ; 
 int FUNC0 (struct ice_hw*,struct ice_ctl_q_info*) ; 
 int FUNC1 (struct ice_hw*,struct ice_ctl_q_info*) ; 
 int FUNC2 (struct ice_hw*,struct ice_ctl_q_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*,TYPE_1__*) ; 

__attribute__((used)) static enum ice_status FUNC4(struct ice_hw *hw, struct ice_ctl_q_info *cq)
{
	enum ice_status ret_code;

	if (cq->sq.count > 0) {
		/* queue already initialized */
		ret_code = ICE_ERR_NOT_READY;
		goto init_ctrlq_exit;
	}

	/* verify input for valid configuration */
	if (!cq->num_sq_entries || !cq->sq_buf_size) {
		ret_code = ICE_ERR_CFG;
		goto init_ctrlq_exit;
	}

	cq->sq.next_to_use = 0;
	cq->sq.next_to_clean = 0;

	/* allocate the ring memory */
	ret_code = FUNC0(hw, cq);
	if (ret_code)
		goto init_ctrlq_exit;

	/* allocate buffers in the rings */
	ret_code = FUNC1(hw, cq);
	if (ret_code)
		goto init_ctrlq_free_rings;

	/* initialize base registers */
	ret_code = FUNC2(hw, cq);
	if (ret_code)
		goto init_ctrlq_free_rings;

	/* success! */
	cq->sq.count = cq->num_sq_entries;
	goto init_ctrlq_exit;

init_ctrlq_free_rings:
	FUNC3(hw, &cq->sq);

init_ctrlq_exit:
	return ret_code;
}
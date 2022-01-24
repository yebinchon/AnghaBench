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
struct TYPE_2__ {scalar_t__ count; int /*<<< orphan*/  bah; int /*<<< orphan*/  bal; int /*<<< orphan*/  len; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct ice_ctl_q_info {int /*<<< orphan*/  sq_lock; TYPE_1__ sq; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int ICE_ERR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ice_hw*,struct ice_ctl_q_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sq ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum ice_status
FUNC5(struct ice_hw *hw, struct ice_ctl_q_info *cq)
{
	enum ice_status ret_code = 0;

	FUNC2(&cq->sq_lock);

	if (!cq->sq.count) {
		ret_code = ICE_ERR_NOT_READY;
		goto shutdown_sq_out;
	}

	/* Stop firmware AdminQ processing */
	FUNC4(hw, cq->sq.head, 0);
	FUNC4(hw, cq->sq.tail, 0);
	FUNC4(hw, cq->sq.len, 0);
	FUNC4(hw, cq->sq.bal, 0);
	FUNC4(hw, cq->sq.bah, 0);

	cq->sq.count = 0;	/* to indicate uninitialized queue */

	/* free ring buffers and the ring itself */
	FUNC0(hw, cq, sq);
	FUNC1(hw, &cq->sq);

shutdown_sq_out:
	FUNC3(&cq->sq_lock);
	return ret_code;
}
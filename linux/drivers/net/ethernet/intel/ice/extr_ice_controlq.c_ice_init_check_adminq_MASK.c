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
struct ice_ctl_q_info {int dummy; } ;
struct ice_hw {struct ice_ctl_q_info adminq; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int ICE_ERR_FW_API_VER ; 
 int FUNC0 (struct ice_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*,struct ice_ctl_q_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*,struct ice_ctl_q_info*) ; 

__attribute__((used)) static enum ice_status FUNC4(struct ice_hw *hw)
{
	struct ice_ctl_q_info *cq = &hw->adminq;
	enum ice_status status;

	status = FUNC0(hw, NULL);
	if (status)
		goto init_ctrlq_free_rq;

	if (!FUNC1(hw)) {
		status = ICE_ERR_FW_API_VER;
		goto init_ctrlq_free_rq;
	}

	return 0;

init_ctrlq_free_rq:
	FUNC2(hw, cq);
	FUNC3(hw, cq);
	return status;
}
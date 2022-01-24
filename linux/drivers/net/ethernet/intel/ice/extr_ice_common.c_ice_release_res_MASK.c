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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ sq_cmd_timeout; } ;
struct ice_hw {TYPE_1__ adminq; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef  enum ice_aq_res_ids { ____Placeholder_ice_aq_res_ids } ice_aq_res_ids ;

/* Variables and functions */
 int ICE_ERR_AQ_TIMEOUT ; 
 int FUNC0 (struct ice_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct ice_hw *hw, enum ice_aq_res_ids res)
{
	enum ice_status status;
	u32 total_delay = 0;

	status = FUNC0(hw, res, 0, NULL);

	/* there are some rare cases when trying to release the resource
	 * results in an admin queue timeout, so handle them correctly
	 */
	while ((status == ICE_ERR_AQ_TIMEOUT) &&
	       (total_delay < hw->adminq.sq_cmd_timeout)) {
		FUNC1(1);
		status = FUNC0(hw, res, 0, NULL);
		total_delay++;
	}
}
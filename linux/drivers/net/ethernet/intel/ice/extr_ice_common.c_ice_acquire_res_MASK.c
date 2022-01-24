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
typedef  scalar_t__ u32 ;
struct ice_hw {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef  enum ice_aq_res_ids { ____Placeholder_ice_aq_res_ids } ice_aq_res_ids ;
typedef  enum ice_aq_res_access_type { ____Placeholder_ice_aq_res_access_type } ice_aq_res_access_type ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_DBG_RES ; 
 int ICE_ERR_AQ_NO_WORK ; 
 scalar_t__ ICE_RES_POLLING_DELAY_MS ; 
 int ICE_RES_WRITE ; 
 int FUNC0 (struct ice_hw*,int,int,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

enum ice_status
FUNC3(struct ice_hw *hw, enum ice_aq_res_ids res,
		enum ice_aq_res_access_type access, u32 timeout)
{
#define ICE_RES_POLLING_DELAY_MS	10
	u32 delay = ICE_RES_POLLING_DELAY_MS;
	u32 time_left = timeout;
	enum ice_status status;

	status = FUNC0(hw, res, access, 0, &time_left, NULL);

	/* A return code of ICE_ERR_AQ_NO_WORK means that another driver has
	 * previously acquired the resource and performed any necessary updates;
	 * in this case the caller does not obtain the resource and has no
	 * further work to do.
	 */
	if (status == ICE_ERR_AQ_NO_WORK)
		goto ice_acquire_res_exit;

	if (status)
		FUNC1(hw, ICE_DBG_RES,
			  "resource %d acquire type %d failed.\n", res, access);

	/* If necessary, poll until the current lock owner timeouts */
	timeout = time_left;
	while (status && timeout && time_left) {
		FUNC2(delay);
		timeout = (timeout > delay) ? timeout - delay : 0;
		status = FUNC0(hw, res, access, 0, &time_left, NULL);

		if (status == ICE_ERR_AQ_NO_WORK)
			/* lock free, but no work to do */
			break;

		if (!status)
			/* lock acquired */
			break;
	}
	if (status && status != ICE_ERR_AQ_NO_WORK)
		FUNC1(hw, ICE_DBG_RES, "resource acquire timed out.\n");

ice_acquire_res_exit:
	if (status == ICE_ERR_AQ_NO_WORK) {
		if (access == ICE_RES_WRITE)
			FUNC1(hw, ICE_DBG_RES,
				  "resource indicates no work to do.\n");
		else
			FUNC1(hw, ICE_DBG_RES,
				  "Warning: ICE_ERR_AQ_NO_WORK not expected\n");
	}
	return status;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ice_port_info {int is_sw_lldp; scalar_t__ dcbx_status; } ;
struct TYPE_6__ {scalar_t__ sq_last_status; } ;
struct TYPE_4__ {int /*<<< orphan*/  dcb; } ;
struct TYPE_5__ {TYPE_1__ common_cap; } ;
struct ice_hw {TYPE_3__ adminq; TYPE_2__ func_caps; struct ice_port_info* port_info; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 scalar_t__ ICE_AQ_RC_EPERM ; 
 scalar_t__ ICE_DCBX_STATUS_DIS ; 
 scalar_t__ ICE_DCBX_STATUS_DONE ; 
 scalar_t__ ICE_DCBX_STATUS_IN_PROGRESS ; 
 scalar_t__ ICE_DCBX_STATUS_NOT_STARTED ; 
 int ICE_ERR_NOT_READY ; 
 int ICE_ERR_NOT_SUPPORTED ; 
 int FUNC0 (struct ice_hw*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ice_port_info*) ; 
 scalar_t__ FUNC2 (struct ice_hw*) ; 

enum ice_status FUNC3(struct ice_hw *hw, bool enable_mib_change)
{
	struct ice_port_info *pi = hw->port_info;
	enum ice_status ret = 0;

	if (!hw->func_caps.common_cap.dcb)
		return ICE_ERR_NOT_SUPPORTED;

	pi->is_sw_lldp = true;

	/* Get DCBX status */
	pi->dcbx_status = FUNC2(hw);

	if (pi->dcbx_status == ICE_DCBX_STATUS_DONE ||
	    pi->dcbx_status == ICE_DCBX_STATUS_IN_PROGRESS ||
	    pi->dcbx_status == ICE_DCBX_STATUS_NOT_STARTED) {
		/* Get current DCBX configuration */
		ret = FUNC1(pi);
		pi->is_sw_lldp = (hw->adminq.sq_last_status == ICE_AQ_RC_EPERM);
		if (ret)
			return ret;
	} else if (pi->dcbx_status == ICE_DCBX_STATUS_DIS) {
		return ICE_ERR_NOT_READY;
	}

	/* Configure the LLDP MIB change event */
	if (enable_mib_change) {
		ret = FUNC0(hw, true, NULL);
		if (!ret)
			pi->is_sw_lldp = false;
	}

	return ret;
}
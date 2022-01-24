#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ice_dcbx_cfg {void* dcbx_mode; int /*<<< orphan*/  tlv_status; } ;
struct ice_port_info {struct ice_dcbx_cfg local_dcbx_cfg; TYPE_2__* hw; } ;
struct ice_aqc_get_cee_dcb_cfg_resp {int /*<<< orphan*/  tlv_status; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_3__ {scalar_t__ sq_last_status; } ;
struct TYPE_4__ {TYPE_1__ adminq; } ;

/* Variables and functions */
 scalar_t__ ICE_AQ_RC_ENOENT ; 
 void* ICE_DCBX_MODE_CEE ; 
 void* ICE_DCBX_MODE_IEEE ; 
 int ICE_ERR_PARAM ; 
 int FUNC0 (TYPE_2__*,struct ice_aqc_get_cee_dcb_cfg_resp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_aqc_get_cee_dcb_cfg_resp*,struct ice_dcbx_cfg*) ; 
 int FUNC2 (struct ice_port_info*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

enum ice_status FUNC4(struct ice_port_info *pi)
{
	struct ice_aqc_get_cee_dcb_cfg_resp cee_cfg;
	struct ice_dcbx_cfg *dcbx_cfg;
	enum ice_status ret;

	if (!pi)
		return ICE_ERR_PARAM;

	ret = FUNC0(pi->hw, &cee_cfg, NULL);
	if (!ret) {
		/* CEE mode */
		dcbx_cfg = &pi->local_dcbx_cfg;
		dcbx_cfg->dcbx_mode = ICE_DCBX_MODE_CEE;
		dcbx_cfg->tlv_status = FUNC3(cee_cfg.tlv_status);
		FUNC1(&cee_cfg, dcbx_cfg);
		ret = FUNC2(pi, ICE_DCBX_MODE_CEE);
	} else if (pi->hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT) {
		/* CEE mode not enabled try querying IEEE data */
		dcbx_cfg = &pi->local_dcbx_cfg;
		dcbx_cfg->dcbx_mode = ICE_DCBX_MODE_IEEE;
		ret = FUNC2(pi, ICE_DCBX_MODE_IEEE);
	}

	return ret;
}
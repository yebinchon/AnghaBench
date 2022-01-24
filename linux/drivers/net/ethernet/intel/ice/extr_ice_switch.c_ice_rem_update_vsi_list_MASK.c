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
typedef  int /*<<< orphan*/  u16 ;
struct ice_vsi_list_map_info {int /*<<< orphan*/  list_entry; int /*<<< orphan*/  vsi_map; } ;
struct ice_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_vsi_id; int /*<<< orphan*/  vsi_list_id; } ;
struct ice_fltr_info {scalar_t__ fltr_act; int lkup_type; TYPE_1__ fwd_id; int /*<<< orphan*/  vsi_handle; } ;
struct ice_fltr_mgmt_list_entry {scalar_t__ vsi_count; struct ice_vsi_list_map_info* vsi_list_info; struct ice_fltr_info fltr_info; } ;
typedef  enum ice_sw_lkup_type { ____Placeholder_ice_sw_lkup_type } ice_sw_lkup_type ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_DBG_SW ; 
 int ICE_ERR_DOES_NOT_EXIST ; 
 int ICE_ERR_OUT_OF_RANGE ; 
 int ICE_ERR_PARAM ; 
 scalar_t__ ICE_FWD_TO_VSI ; 
 scalar_t__ ICE_FWD_TO_VSI_LIST ; 
 int /*<<< orphan*/  ICE_MAX_VSI ; 
 int ICE_SW_LKUP_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ice_vsi_list_map_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ice_aqc_opc_update_sw_rules ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ice_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct ice_hw*,struct ice_fltr_info*) ; 
 int FUNC9 (struct ice_hw*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum ice_status
FUNC12(struct ice_hw *hw, u16 vsi_handle,
			struct ice_fltr_mgmt_list_entry *fm_list)
{
	enum ice_sw_lkup_type lkup_type;
	enum ice_status status = 0;
	u16 vsi_list_id;

	if (fm_list->fltr_info.fltr_act != ICE_FWD_TO_VSI_LIST ||
	    fm_list->vsi_count == 0)
		return ICE_ERR_PARAM;

	/* A rule with the VSI being removed does not exist */
	if (!FUNC11(vsi_handle, fm_list->vsi_list_info->vsi_map))
		return ICE_ERR_DOES_NOT_EXIST;

	lkup_type = fm_list->fltr_info.lkup_type;
	vsi_list_id = fm_list->fltr_info.fwd_id.vsi_list_id;
	status = FUNC9(hw, &vsi_handle, 1, vsi_list_id, true,
					  ice_aqc_opc_update_sw_rules,
					  lkup_type);
	if (status)
		return status;

	fm_list->vsi_count--;
	FUNC0(vsi_handle, fm_list->vsi_list_info->vsi_map);

	if (fm_list->vsi_count == 1 && lkup_type != ICE_SW_LKUP_VLAN) {
		struct ice_fltr_info tmp_fltr_info = fm_list->fltr_info;
		struct ice_vsi_list_map_info *vsi_list_info =
			fm_list->vsi_list_info;
		u16 rem_vsi_handle;

		rem_vsi_handle = FUNC2(vsi_list_info->vsi_map,
						ICE_MAX_VSI);
		if (!FUNC6(hw, rem_vsi_handle))
			return ICE_ERR_OUT_OF_RANGE;

		/* Make sure VSI list is empty before removing it below */
		status = FUNC9(hw, &rem_vsi_handle, 1,
						  vsi_list_id, true,
						  ice_aqc_opc_update_sw_rules,
						  lkup_type);
		if (status)
			return status;

		tmp_fltr_info.fltr_act = ICE_FWD_TO_VSI;
		tmp_fltr_info.fwd_id.hw_vsi_id =
			FUNC4(hw, rem_vsi_handle);
		tmp_fltr_info.vsi_handle = rem_vsi_handle;
		status = FUNC8(hw, &tmp_fltr_info);
		if (status) {
			FUNC3(hw, ICE_DBG_SW,
				  "Failed to update pkt fwd rule to FWD_TO_VSI on HW VSI %d, error %d\n",
				  tmp_fltr_info.fwd_id.hw_vsi_id, status);
			return status;
		}

		fm_list->fltr_info = tmp_fltr_info;
	}

	if ((fm_list->vsi_count == 1 && lkup_type != ICE_SW_LKUP_VLAN) ||
	    (fm_list->vsi_count == 0 && lkup_type == ICE_SW_LKUP_VLAN)) {
		struct ice_vsi_list_map_info *vsi_list_info =
			fm_list->vsi_list_info;

		/* Remove the VSI list since it is no longer used */
		status = FUNC7(hw, vsi_list_id, lkup_type);
		if (status) {
			FUNC3(hw, ICE_DBG_SW,
				  "Failed to remove VSI list %d, error %d\n",
				  vsi_list_id, status);
			return status;
		}

		FUNC10(&vsi_list_info->list_entry);
		FUNC1(FUNC5(hw), vsi_list_info);
		fm_list->vsi_list_info = NULL;
	}

	return status;
}
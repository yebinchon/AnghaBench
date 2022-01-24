#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mutex {int dummy; } ;
struct ice_switch_info {TYPE_2__* recp_list; } ;
struct ice_hw {struct ice_switch_info* switch_info; } ;
struct TYPE_10__ {scalar_t__ fltr_act; } ;
struct ice_fltr_mgmt_list_entry {scalar_t__ vsi_count; int /*<<< orphan*/  list_entry; TYPE_5__ fltr_info; TYPE_3__* vsi_list_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw_vsi_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  vsi_handle; TYPE_1__ fwd_id; } ;
struct ice_fltr_list_entry {TYPE_4__ fltr_info; } ;
struct ice_aqc_sw_rules_elem {scalar_t__ vsi_count; int /*<<< orphan*/  list_entry; TYPE_5__ fltr_info; TYPE_3__* vsi_list_info; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_8__ {int ref_cnt; } ;
struct TYPE_7__ {struct mutex filt_rule_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ICE_ERR_DOES_NOT_EXIST ; 
 int ICE_ERR_NO_MEMORY ; 
 int ICE_ERR_PARAM ; 
 scalar_t__ ICE_FWD_TO_VSI_LIST ; 
 int /*<<< orphan*/  ICE_SW_RULE_RX_TX_NO_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ice_fltr_mgmt_list_entry*) ; 
 struct ice_fltr_mgmt_list_entry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ice_hw*,struct ice_fltr_mgmt_list_entry*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ice_aqc_opc_remove_sw_rules ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*,TYPE_5__*,struct ice_fltr_mgmt_list_entry*,int /*<<< orphan*/ ) ; 
 struct ice_fltr_mgmt_list_entry* FUNC4 (struct ice_hw*,size_t,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ice_hw*,int /*<<< orphan*/ ,struct ice_fltr_mgmt_list_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC11 (struct mutex*) ; 

__attribute__((used)) static enum ice_status
FUNC12(struct ice_hw *hw, u8 recp_id,
			 struct ice_fltr_list_entry *f_entry)
{
	struct ice_switch_info *sw = hw->switch_info;
	struct ice_fltr_mgmt_list_entry *list_elem;
	struct mutex *rule_lock; /* Lock to protect filter rule list */
	enum ice_status status = 0;
	bool remove_rule = false;
	u16 vsi_handle;

	if (!FUNC7(hw, f_entry->fltr_info.vsi_handle))
		return ICE_ERR_PARAM;
	f_entry->fltr_info.fwd_id.hw_vsi_id =
		FUNC5(hw, f_entry->fltr_info.vsi_handle);

	rule_lock = &sw->recp_list[recp_id].filt_rule_lock;
	FUNC10(rule_lock);
	list_elem = FUNC4(hw, recp_id, &f_entry->fltr_info);
	if (!list_elem) {
		status = ICE_ERR_DOES_NOT_EXIST;
		goto exit;
	}

	if (list_elem->fltr_info.fltr_act != ICE_FWD_TO_VSI_LIST) {
		remove_rule = true;
	} else if (!list_elem->vsi_list_info) {
		status = ICE_ERR_DOES_NOT_EXIST;
		goto exit;
	} else if (list_elem->vsi_list_info->ref_cnt > 1) {
		/* a ref_cnt > 1 indicates that the vsi_list is being
		 * shared by multiple rules. Decrement the ref_cnt and
		 * remove this rule, but do not modify the list, as it
		 * is in-use by other rules.
		 */
		list_elem->vsi_list_info->ref_cnt--;
		remove_rule = true;
	} else {
		/* a ref_cnt of 1 indicates the vsi_list is only used
		 * by one rule. However, the original removal request is only
		 * for a single VSI. Update the vsi_list first, and only
		 * remove the rule if there are no further VSIs in this list.
		 */
		vsi_handle = f_entry->fltr_info.vsi_handle;
		status = FUNC8(hw, vsi_handle, list_elem);
		if (status)
			goto exit;
		/* if VSI count goes to zero after updating the VSI list */
		if (list_elem->vsi_count == 0)
			remove_rule = true;
	}

	if (remove_rule) {
		/* Remove the lookup rule */
		struct ice_aqc_sw_rules_elem *s_rule;

		s_rule = FUNC1(FUNC6(hw),
				      ICE_SW_RULE_RX_TX_NO_HDR_SIZE,
				      GFP_KERNEL);
		if (!s_rule) {
			status = ICE_ERR_NO_MEMORY;
			goto exit;
		}

		FUNC3(hw, &list_elem->fltr_info, s_rule,
				 ice_aqc_opc_remove_sw_rules);

		status = FUNC2(hw, s_rule,
					 ICE_SW_RULE_RX_TX_NO_HDR_SIZE, 1,
					 ice_aqc_opc_remove_sw_rules, NULL);

		/* Remove a book keeping from the list */
		FUNC0(FUNC6(hw), s_rule);

		if (status)
			goto exit;

		FUNC9(&list_elem->list_entry);
		FUNC0(FUNC6(hw), list_elem);
	}
exit:
	FUNC11(rule_lock);
	return status;
}
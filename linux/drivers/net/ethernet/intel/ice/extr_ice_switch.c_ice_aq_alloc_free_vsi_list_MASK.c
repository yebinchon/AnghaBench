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
struct TYPE_2__ {void* sw_resp; } ;
struct ice_aqc_res_elem {TYPE_1__ e; } ;
struct ice_aqc_alloc_free_res_elem {struct ice_aqc_res_elem* elem; void* res_type; void* num_elems; } ;
typedef  enum ice_sw_lkup_type { ____Placeholder_ice_sw_lkup_type } ice_sw_lkup_type ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef  enum ice_adminq_opc { ____Placeholder_ice_adminq_opc } ice_adminq_opc ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ICE_AQC_RES_TYPE_VSI_LIST_PRUNE ; 
 int ICE_AQC_RES_TYPE_VSI_LIST_REP ; 
 int ICE_ERR_NO_MEMORY ; 
 int ICE_ERR_PARAM ; 
 int ICE_SW_LKUP_ETHERTYPE ; 
 int ICE_SW_LKUP_ETHERTYPE_MAC ; 
 int ICE_SW_LKUP_MAC ; 
 int ICE_SW_LKUP_MAC_VLAN ; 
 int ICE_SW_LKUP_PROMISC ; 
 int ICE_SW_LKUP_PROMISC_VLAN ; 
 int ICE_SW_LKUP_VLAN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ice_aqc_alloc_free_res_elem*) ; 
 struct ice_aqc_alloc_free_res_elem* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ice_hw*,int,struct ice_aqc_alloc_free_res_elem*,int,int,int /*<<< orphan*/ *) ; 
 int ice_aqc_opc_alloc_res ; 
 int ice_aqc_opc_free_res ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*) ; 
 int FUNC5 (void*) ; 

__attribute__((used)) static enum ice_status
FUNC6(struct ice_hw *hw, u16 *vsi_list_id,
			   enum ice_sw_lkup_type lkup_type,
			   enum ice_adminq_opc opc)
{
	struct ice_aqc_alloc_free_res_elem *sw_buf;
	struct ice_aqc_res_elem *vsi_ele;
	enum ice_status status;
	u16 buf_len;

	buf_len = sizeof(*sw_buf);
	sw_buf = FUNC2(FUNC4(hw), buf_len, GFP_KERNEL);
	if (!sw_buf)
		return ICE_ERR_NO_MEMORY;
	sw_buf->num_elems = FUNC0(1);

	if (lkup_type == ICE_SW_LKUP_MAC ||
	    lkup_type == ICE_SW_LKUP_MAC_VLAN ||
	    lkup_type == ICE_SW_LKUP_ETHERTYPE ||
	    lkup_type == ICE_SW_LKUP_ETHERTYPE_MAC ||
	    lkup_type == ICE_SW_LKUP_PROMISC ||
	    lkup_type == ICE_SW_LKUP_PROMISC_VLAN) {
		sw_buf->res_type = FUNC0(ICE_AQC_RES_TYPE_VSI_LIST_REP);
	} else if (lkup_type == ICE_SW_LKUP_VLAN) {
		sw_buf->res_type =
			FUNC0(ICE_AQC_RES_TYPE_VSI_LIST_PRUNE);
	} else {
		status = ICE_ERR_PARAM;
		goto ice_aq_alloc_free_vsi_list_exit;
	}

	if (opc == ice_aqc_opc_free_res)
		sw_buf->elem[0].e.sw_resp = FUNC0(*vsi_list_id);

	status = FUNC3(hw, 1, sw_buf, buf_len, opc, NULL);
	if (status)
		goto ice_aq_alloc_free_vsi_list_exit;

	if (opc == ice_aqc_opc_alloc_res) {
		vsi_ele = &sw_buf->elem[0];
		*vsi_list_id = FUNC5(vsi_ele->e.sw_resp);
	}

ice_aq_alloc_free_vsi_list_exit:
	FUNC1(FUNC4(hw), sw_buf);
	return status;
}
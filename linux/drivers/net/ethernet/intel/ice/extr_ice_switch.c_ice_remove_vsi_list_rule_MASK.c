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
typedef  scalar_t__ u16 ;
struct ice_hw {int dummy; } ;
struct TYPE_3__ {void* index; } ;
struct TYPE_4__ {TYPE_1__ vsi_list; } ;
struct ice_aqc_sw_rules_elem {TYPE_2__ pdata; void* type; } ;
typedef  enum ice_sw_lkup_type { ____Placeholder_ice_sw_lkup_type } ice_sw_lkup_type ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR ; 
 int ICE_ERR_NO_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ice_aqc_sw_rules_elem*) ; 
 struct ice_aqc_sw_rules_elem* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ice_hw*,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ice_aqc_opc_free_res ; 
 int /*<<< orphan*/  FUNC5 (struct ice_hw*) ; 

__attribute__((used)) static enum ice_status
FUNC6(struct ice_hw *hw, u16 vsi_list_id,
			 enum ice_sw_lkup_type lkup_type)
{
	struct ice_aqc_sw_rules_elem *s_rule;
	enum ice_status status;
	u16 s_rule_size;

	s_rule_size = (u16)FUNC0(0);
	s_rule = FUNC3(FUNC5(hw), s_rule_size, GFP_KERNEL);
	if (!s_rule)
		return ICE_ERR_NO_MEMORY;

	s_rule->type = FUNC1(ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR);
	s_rule->pdata.vsi_list.index = FUNC1(vsi_list_id);

	/* Free the vsi_list resource that we allocated. It is assumed that the
	 * list is empty at this point.
	 */
	status = FUNC4(hw, &vsi_list_id, lkup_type,
					    ice_aqc_opc_free_res);

	FUNC2(FUNC5(hw), s_rule);
	return status;
}
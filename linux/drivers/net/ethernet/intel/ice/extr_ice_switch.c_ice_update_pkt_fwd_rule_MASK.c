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
struct ice_hw {int dummy; } ;
struct ice_fltr_info {int /*<<< orphan*/  fltr_rule_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;
struct TYPE_4__ {TYPE_1__ lkup_tx_rx; } ;
struct ice_aqc_sw_rules_elem {TYPE_2__ pdata; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ICE_ERR_NO_MEMORY ; 
 int /*<<< orphan*/  ICE_SW_RULE_RX_TX_ETH_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ice_aqc_sw_rules_elem*) ; 
 struct ice_aqc_sw_rules_elem* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ice_hw*,struct ice_aqc_sw_rules_elem*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ice_aqc_opc_update_sw_rules ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*,struct ice_fltr_info*,struct ice_aqc_sw_rules_elem*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_hw*) ; 

__attribute__((used)) static enum ice_status
FUNC6(struct ice_hw *hw, struct ice_fltr_info *f_info)
{
	struct ice_aqc_sw_rules_elem *s_rule;
	enum ice_status status;

	s_rule = FUNC2(FUNC5(hw),
			      ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, GFP_KERNEL);
	if (!s_rule)
		return ICE_ERR_NO_MEMORY;

	FUNC4(hw, f_info, s_rule, ice_aqc_opc_update_sw_rules);

	s_rule->pdata.lkup_tx_rx.index = FUNC0(f_info->fltr_rule_id);

	/* Update switch rule with new rule set to forward VSI list */
	status = FUNC3(hw, s_rule, ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, 1,
				 ice_aqc_opc_update_sw_rules, NULL);

	FUNC1(FUNC5(hw), s_rule);
	return status;
}
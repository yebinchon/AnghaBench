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
typedef  size_t u8 ;
struct ice_sw_recipe {size_t root_rid; int /*<<< orphan*/  filt_rule_lock; int /*<<< orphan*/  filt_replay_rules; int /*<<< orphan*/  filt_rules; } ;
struct ice_hw {TYPE_1__* switch_info; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_2__ {struct ice_sw_recipe* recp_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ICE_ERR_NO_MEMORY ; 
 int /*<<< orphan*/  ICE_MAX_NUM_RECIPES ; 
 size_t ICE_SW_LKUP_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ice_sw_recipe* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

enum ice_status FUNC4(struct ice_hw *hw)
{
	struct ice_sw_recipe *recps;
	u8 i;

	recps = FUNC1(FUNC2(hw), ICE_MAX_NUM_RECIPES,
			     sizeof(*recps), GFP_KERNEL);
	if (!recps)
		return ICE_ERR_NO_MEMORY;

	for (i = 0; i < ICE_SW_LKUP_LAST; i++) {
		recps[i].root_rid = i;
		FUNC0(&recps[i].filt_rules);
		FUNC0(&recps[i].filt_replay_rules);
		FUNC3(&recps[i].filt_rule_lock);
	}

	hw->switch_info->recp_list = recps;

	return 0;
}
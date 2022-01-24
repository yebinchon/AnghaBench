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
struct ice_switch_info {int /*<<< orphan*/  vsi_list_map_head; } ;
struct ice_hw {struct ice_switch_info* switch_info; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ICE_ERR_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ice_switch_info* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*) ; 
 int FUNC3 (struct ice_hw*) ; 

__attribute__((used)) static enum ice_status FUNC4(struct ice_hw *hw)
{
	struct ice_switch_info *sw;

	hw->switch_info = FUNC1(FUNC2(hw),
				       sizeof(*hw->switch_info), GFP_KERNEL);
	sw = hw->switch_info;

	if (!sw)
		return ICE_ERR_NO_MEMORY;

	FUNC0(&sw->vsi_list_map_head);

	return FUNC3(hw);
}
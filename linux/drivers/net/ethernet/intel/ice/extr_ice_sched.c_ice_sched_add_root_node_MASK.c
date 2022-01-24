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
struct ice_sched_node {int /*<<< orphan*/  info; int /*<<< orphan*/  children; } ;
struct ice_port_info {struct ice_sched_node* root; struct ice_hw* hw; } ;
struct ice_hw {int /*<<< orphan*/ * max_children; } ;
struct ice_aqc_txsched_elem_data {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ICE_ERR_NO_MEMORY ; 
 int ICE_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ice_sched_node*) ; 
 struct ice_sched_node* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ice_aqc_txsched_elem_data*,int) ; 

__attribute__((used)) static enum ice_status
FUNC5(struct ice_port_info *pi,
			struct ice_aqc_txsched_elem_data *info)
{
	struct ice_sched_node *root;
	struct ice_hw *hw;

	if (!pi)
		return ICE_ERR_PARAM;

	hw = pi->hw;

	root = FUNC2(FUNC3(hw), sizeof(*root), GFP_KERNEL);
	if (!root)
		return ICE_ERR_NO_MEMORY;

	/* coverity[suspicious_sizeof] */
	root->children = FUNC0(FUNC3(hw), hw->max_children[0],
				      sizeof(*root), GFP_KERNEL);
	if (!root->children) {
		FUNC1(FUNC3(hw), root);
		return ICE_ERR_NO_MEMORY;
	}

	FUNC4(&root->info, info, sizeof(*info));
	pi->root = root;
	return 0;
}
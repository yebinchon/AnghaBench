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
typedef  size_t u8 ;
struct ice_sched_node {int in_use; size_t tx_sched_layer; int /*<<< orphan*/  info; int /*<<< orphan*/  num_children; struct ice_sched_node** children; struct ice_sched_node* parent; } ;
struct ice_port_info {int /*<<< orphan*/  root; struct ice_hw* hw; } ;
struct ice_hw {scalar_t__* max_children; } ;
struct ice_aqc_txsched_elem_data {int /*<<< orphan*/  node_teid; int /*<<< orphan*/  parent_teid; } ;
struct ice_aqc_get_elem {int /*<<< orphan*/ * generic; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ICE_DBG_SCHED ; 
 int ICE_ERR_NO_MEMORY ; 
 int ICE_ERR_PARAM ; 
 struct ice_sched_node** FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ice_sched_node*) ; 
 struct ice_sched_node* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*) ; 
 struct ice_sched_node* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ice_hw*,int /*<<< orphan*/ ,struct ice_aqc_get_elem*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

enum ice_status
FUNC9(struct ice_port_info *pi, u8 layer,
		   struct ice_aqc_txsched_elem_data *info)
{
	struct ice_sched_node *parent;
	struct ice_aqc_get_elem elem;
	struct ice_sched_node *node;
	enum ice_status status;
	struct ice_hw *hw;

	if (!pi)
		return ICE_ERR_PARAM;

	hw = pi->hw;

	/* A valid parent node should be there */
	parent = FUNC5(pi->root,
					     FUNC7(info->parent_teid));
	if (!parent) {
		FUNC3(hw, ICE_DBG_SCHED,
			  "Parent Node not found for parent_teid=0x%x\n",
			  FUNC7(info->parent_teid));
		return ICE_ERR_PARAM;
	}

	/* query the current node information from FW  before additing it
	 * to the SW DB
	 */
	status = FUNC6(hw, FUNC7(info->node_teid), &elem);
	if (status)
		return status;

	node = FUNC2(FUNC4(hw), sizeof(*node), GFP_KERNEL);
	if (!node)
		return ICE_ERR_NO_MEMORY;
	if (hw->max_children[layer]) {
		/* coverity[suspicious_sizeof] */
		node->children = FUNC0(FUNC4(hw),
					      hw->max_children[layer],
					      sizeof(*node), GFP_KERNEL);
		if (!node->children) {
			FUNC1(FUNC4(hw), node);
			return ICE_ERR_NO_MEMORY;
		}
	}

	node->in_use = true;
	node->parent = parent;
	node->tx_sched_layer = layer;
	parent->children[parent->num_children++] = node;
	FUNC8(&node->info, &elem.generic[0], sizeof(node->info));
	return 0;
}
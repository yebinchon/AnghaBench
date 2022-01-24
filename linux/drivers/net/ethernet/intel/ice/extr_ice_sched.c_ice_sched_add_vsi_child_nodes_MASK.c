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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct ice_sched_node {size_t owner; struct ice_sched_node** children; struct ice_sched_node* sibling; } ;
struct ice_port_info {struct ice_hw* hw; } ;
struct ice_hw {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int ICE_ERR_CFG ; 
 int FUNC0 (struct ice_port_info*,struct ice_sched_node*,struct ice_sched_node*,size_t,scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 struct ice_sched_node* FUNC1 (struct ice_sched_node*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct ice_hw*) ; 
 size_t FUNC3 (struct ice_hw*) ; 
 struct ice_sched_node* FUNC4 (struct ice_hw*,struct ice_sched_node*,scalar_t__) ; 

__attribute__((used)) static enum ice_status
FUNC5(struct ice_port_info *pi, u16 vsi_handle,
			      struct ice_sched_node *tc_node, u16 *num_nodes,
			      u8 owner)
{
	struct ice_sched_node *parent, *node;
	struct ice_hw *hw = pi->hw;
	enum ice_status status;
	u32 first_node_teid;
	u16 num_added = 0;
	u8 i, qgl, vsil;

	qgl = FUNC2(hw);
	vsil = FUNC3(hw);
	parent = FUNC4(hw, tc_node, vsi_handle);
	for (i = vsil + 1; i <= qgl; i++) {
		if (!parent)
			return ICE_ERR_CFG;

		status = FUNC0(pi, tc_node, parent, i,
						      num_nodes[i],
						      &first_node_teid,
						      &num_added);
		if (status || num_nodes[i] != num_added)
			return ICE_ERR_CFG;

		/* The newly added node can be a new parent for the next
		 * layer nodes
		 */
		if (num_added) {
			parent = FUNC1(tc_node,
							     first_node_teid);
			node = parent;
			while (node) {
				node->owner = owner;
				node = node->sibling;
			}
		} else {
			parent = parent->children[0];
		}
	}

	return 0;
}
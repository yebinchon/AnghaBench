#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  node_teid; } ;
struct ice_sched_node {TYPE_1__ info; } ;
struct TYPE_6__ {int /*<<< orphan*/  sq_last_status; } ;
struct ice_hw {TYPE_3__ adminq; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_elems; int /*<<< orphan*/  parent_teid; } ;
struct ice_aqc_delete_elem {int /*<<< orphan*/ * teid; TYPE_2__ hdr; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ICE_DBG_SCHED ; 
 int ICE_ERR_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ice_aqc_delete_elem*) ; 
 struct ice_aqc_delete_elem* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ice_hw*,int,struct ice_aqc_delete_elem*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_hw*) ; 

__attribute__((used)) static enum ice_status
FUNC7(struct ice_hw *hw, struct ice_sched_node *parent,
		       u16 num_nodes, u32 *node_teids)
{
	struct ice_aqc_delete_elem *buf;
	u16 i, num_groups_removed = 0;
	enum ice_status status;
	u16 buf_size;

	buf_size = sizeof(*buf) + sizeof(u32) * (num_nodes - 1);
	buf = FUNC3(FUNC6(hw), buf_size, GFP_KERNEL);
	if (!buf)
		return ICE_ERR_NO_MEMORY;

	buf->hdr.parent_teid = parent->info.node_teid;
	buf->hdr.num_elems = FUNC0(num_nodes);
	for (i = 0; i < num_nodes; i++)
		buf->teid[i] = FUNC1(node_teids[i]);

	status = FUNC4(hw, 1, buf, buf_size,
					   &num_groups_removed, NULL);
	if (status || num_groups_removed != 1)
		FUNC5(hw, ICE_DBG_SCHED, "remove node failed FW error %d\n",
			  hw->adminq.sq_last_status);

	FUNC2(FUNC6(hw), buf);
	return status;
}
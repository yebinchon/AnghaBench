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
typedef  int /*<<< orphan*/  u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_sched_elem_cmd {int /*<<< orphan*/  num_elem_resp; int /*<<< orphan*/  num_elem_req; } ;
struct TYPE_2__ {struct ice_aqc_sched_elem_cmd sched_elem_cmd; } ;
struct ice_aq_desc {int /*<<< orphan*/  flags; TYPE_1__ params; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef  enum ice_adminq_opc { ____Placeholder_ice_adminq_opc } ice_adminq_opc ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_AQ_FLAG_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ice_hw*,struct ice_aq_desc*,void*,int /*<<< orphan*/ ,struct ice_sq_cd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_aq_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum ice_status
FUNC4(struct ice_hw *hw, enum ice_adminq_opc cmd_opc,
			    u16 elems_req, void *buf, u16 buf_size,
			    u16 *elems_resp, struct ice_sq_cd *cd)
{
	struct ice_aqc_sched_elem_cmd *cmd;
	struct ice_aq_desc desc;
	enum ice_status status;

	cmd = &desc.params.sched_elem_cmd;
	FUNC2(&desc, cmd_opc);
	cmd->num_elem_req = FUNC0(elems_req);
	desc.flags |= FUNC0(ICE_AQ_FLAG_RD);
	status = FUNC1(hw, &desc, buf, buf_size, cd);
	if (!status && elems_resp)
		*elems_resp = FUNC3(cmd->num_elem_resp);

	return status;
}
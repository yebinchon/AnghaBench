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
struct qlcnic_vf_info {int /*<<< orphan*/  state; } ;
struct qlcnic_bc_trans {struct qlcnic_bc_hdr* req_hdr; } ;
struct qlcnic_bc_hdr {scalar_t__ cmd_op; scalar_t__ op_type; } ;
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_BC_CMD_CHANNEL_INIT ; 
 scalar_t__ QLC_BC_CMD ; 
 int /*<<< orphan*/  QLC_BC_VF_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,struct qlcnic_bc_trans*,struct qlcnic_vf_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC2(struct qlcnic_adapter *adapter,
				 struct qlcnic_bc_trans *trans,
				 struct qlcnic_vf_info *vf)
{
	struct qlcnic_bc_hdr *hdr = trans->req_hdr;

	if ((hdr->cmd_op == QLCNIC_BC_CMD_CHANNEL_INIT) &&
	    (hdr->op_type == QLC_BC_CMD) &&
	     FUNC1(QLC_BC_VF_STATE, &vf->state)) {
		FUNC0(adapter, trans, vf);
		return true;
	}

	return false;
}
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
struct qlcnic_vf_info {int /*<<< orphan*/  send_cmd_lock; struct qlcnic_bc_trans* send_cmd; int /*<<< orphan*/  state; } ;
struct qlcnic_bc_trans {int func_id; scalar_t__ cmd_id; struct qlcnic_vf_info* vf; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* sriov; } ;
struct TYPE_3__ {struct qlcnic_vf_info* vf_info; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ QLCNIC_BC_CMD_CHANNEL_INIT ; 
 int /*<<< orphan*/  QLC_BC_COMMAND ; 
 int /*<<< orphan*/  QLC_BC_VF_STATE ; 
 int FUNC0 (struct qlcnic_bc_trans*,struct qlcnic_vf_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_vf_info*,struct qlcnic_bc_trans*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qlcnic_adapter*,int) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct qlcnic_adapter *adapter,
				    struct qlcnic_bc_trans *trans, int pci_func)
{
	struct qlcnic_vf_info *vf;
	int err, index = FUNC4(adapter, pci_func);

	if (index < 0)
		return -EIO;

	vf = &adapter->ahw->sriov->vf_info[index];
	trans->vf = vf;
	trans->func_id = pci_func;

	if (!FUNC7(QLC_BC_VF_STATE, &vf->state)) {
		if (FUNC5(adapter))
			return -EIO;
		if (FUNC6(adapter) &&
		    trans->cmd_id != QLCNIC_BC_CMD_CHANNEL_INIT)
			return -EIO;
	}

	FUNC1(&vf->send_cmd_lock);
	vf->send_cmd = trans;
	err = FUNC0(trans, vf, QLC_BC_COMMAND);
	FUNC3(vf, trans, QLC_BC_COMMAND);
	FUNC2(&vf->send_cmd_lock);
	return err;
}
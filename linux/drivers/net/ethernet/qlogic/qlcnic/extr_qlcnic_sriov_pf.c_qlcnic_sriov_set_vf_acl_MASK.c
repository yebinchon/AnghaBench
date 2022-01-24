#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct qlcnic_vport {int spoofchk; int* mac; scalar_t__ vlan_mode; int pvid; } ;
struct TYPE_9__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_4__ req; } ;
struct qlcnic_adapter {TYPE_5__* pdev; TYPE_3__* ahw; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {TYPE_2__* sriov; } ;
struct TYPE_7__ {TYPE_1__* vf_info; } ;
struct TYPE_6__ {struct qlcnic_vport* vp; } ;

/* Variables and functions */
 int BIT_1 ; 
 int BIT_3 ; 
 int BIT_6 ; 
 int BIT_8 ; 
 int /*<<< orphan*/  QLCNIC_CMD_SET_NIC_INFO ; 
 scalar_t__ QLC_PVID_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 int FUNC4 (struct qlcnic_adapter*,int) ; 

__attribute__((used)) static int FUNC5(struct qlcnic_adapter *adapter, u8 func)
{
	struct qlcnic_cmd_args cmd;
	struct qlcnic_vport *vp;
	int err, id;
	u8 *mac;

	id = FUNC4(adapter, func);
	if (id < 0)
		return id;

	vp = adapter->ahw->sriov->vf_info[id].vp;
	err = FUNC1(&cmd, adapter, QLCNIC_CMD_SET_NIC_INFO);
	if (err)
		return err;

	cmd.req.arg[1] = 0x3 | func << 16;
	if (vp->spoofchk == true) {
		mac = vp->mac;
		cmd.req.arg[2] |= BIT_1 | BIT_3 | BIT_8;
		cmd.req.arg[4] = mac[5] | mac[4] << 8 | mac[3] << 16 |
				 mac[2] << 24;
		cmd.req.arg[5] = mac[1] | mac[0] << 8;
	}

	if (vp->vlan_mode == QLC_PVID_MODE) {
		cmd.req.arg[2] |= BIT_6;
		cmd.req.arg[3] |= vp->pvid << 8;
	}

	err = FUNC3(adapter, &cmd);
	if (err)
		FUNC0(&adapter->pdev->dev, "Failed to set ACL, err=%d\n",
			err);

	FUNC2(&cmd);
	return err;
}
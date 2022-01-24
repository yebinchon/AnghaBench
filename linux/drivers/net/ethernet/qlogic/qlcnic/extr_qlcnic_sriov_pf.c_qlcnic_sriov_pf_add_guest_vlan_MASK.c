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
typedef  int u16 ;
struct qlcnic_vf_info {int /*<<< orphan*/  rx_ctx_id; } ;
struct qlcnic_sriov {int dummy; } ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {struct qlcnic_sriov* sriov; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_MAC_ADD ; 
 int /*<<< orphan*/  QLCNIC_MAC_DEL ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_sriov*,struct qlcnic_vf_info*,int) ; 
 int FUNC2 (struct qlcnic_adapter*,struct qlcnic_vf_info*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct qlcnic_vf_info*) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter,
					  struct qlcnic_vf_info *vf,
					  struct qlcnic_cmd_args *cmd)
{
	struct qlcnic_sriov *sriov = adapter->ahw->sriov;
	int err = -EIO;
	u16 vlan;

	if (FUNC0(adapter) && FUNC3(vf))
		return err;

	vlan = cmd->req.arg[1] >> 16;

	if (!vf->rx_ctx_id) {
		FUNC1(sriov, vf, vlan);
		return 0;
	}

	if (FUNC0(adapter)) {
		err = FUNC2(adapter, vf, 0,
						  QLCNIC_MAC_DEL);
		if (err)
			return err;
	}

	err = FUNC2(adapter, vf, vlan, QLCNIC_MAC_ADD);

	if (err) {
		if (FUNC0(adapter))
			FUNC2(adapter, vf, 0,
						    QLCNIC_MAC_ADD);
		return err;
	}

	FUNC1(sriov, vf, vlan);
	return err;
}
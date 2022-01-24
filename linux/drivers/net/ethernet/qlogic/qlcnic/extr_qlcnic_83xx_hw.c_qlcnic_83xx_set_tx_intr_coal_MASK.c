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
typedef  int u16 ;
struct qlcnic_nic_intr_coalesce {int tx_time_us; int tx_packets; int flag; } ;
struct TYPE_6__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_3__ req; } ;
struct qlcnic_adapter {int /*<<< orphan*/  netdev; TYPE_2__* tx_ring; TYPE_1__* ahw; } ;
struct TYPE_5__ {int ctx_id; } ;
struct TYPE_4__ {struct qlcnic_nic_intr_coalesce coal; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_CONFIG_INTR_COAL ; 
 int QLCNIC_INTR_COAL_TYPE_TX ; 
 int QLCNIC_RCODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter)
{
	struct qlcnic_nic_intr_coalesce *coal = &adapter->ahw->coal;
	struct qlcnic_cmd_args cmd;
	u16 temp;
	int err;

	err = FUNC1(&cmd, adapter, QLCNIC_CMD_CONFIG_INTR_COAL);
	if (err)
		return err;

	temp = adapter->tx_ring->ctx_id;
	cmd.req.arg[1] = QLCNIC_INTR_COAL_TYPE_TX | temp << 16;
	temp = coal->tx_time_us;
	cmd.req.arg[2] = coal->tx_packets | temp << 16;
	cmd.req.arg[3] = coal->flag;

	err = FUNC3(adapter, &cmd);
	if (err != QLCNIC_RCODE_SUCCESS)
		FUNC0(adapter->netdev,
			   "failed to set interrupt coalescing  parameters\n");

	FUNC2(&cmd);

	return err;
}
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
typedef  int u32 ;
struct vmxnet3_adapter {int link_speed; int num_tx_queues; int /*<<< orphan*/ * tx_queue; int /*<<< orphan*/  netdev; int /*<<< orphan*/  cmd_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_CMD_GET_LINK ; 
 int FUNC0 (struct vmxnet3_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMXNET3_REG_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct vmxnet3_adapter*) ; 

__attribute__((used)) static void
FUNC9(struct vmxnet3_adapter *adapter, bool affectTxQueue)
{
	u32 ret;
	int i;
	unsigned long flags;

	FUNC5(&adapter->cmd_lock, flags);
	FUNC1(adapter, VMXNET3_REG_CMD, VMXNET3_CMD_GET_LINK);
	ret = FUNC0(adapter, VMXNET3_REG_CMD);
	FUNC6(&adapter->cmd_lock, flags);

	adapter->link_speed = ret >> 16;
	if (ret & 1) { /* Link is up. */
		FUNC2(adapter->netdev, "NIC Link is Up %d Mbps\n",
			    adapter->link_speed);
		FUNC4(adapter->netdev);

		if (affectTxQueue) {
			for (i = 0; i < adapter->num_tx_queues; i++)
				FUNC7(&adapter->tx_queue[i],
						 adapter);
		}
	} else {
		FUNC2(adapter->netdev, "NIC Link is Down\n");
		FUNC3(adapter->netdev);

		if (affectTxQueue) {
			for (i = 0; i < adapter->num_tx_queues; i++)
				FUNC8(&adapter->tx_queue[i], adapter);
		}
	}
}
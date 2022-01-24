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
typedef  int u16 ;
struct vmxnet3_adapter {int num_tx_queues; int txdata_desc_size; int /*<<< orphan*/  rxdata_desc_size; int /*<<< orphan*/  rx_ring2_size; int /*<<< orphan*/  rx_ring_size; int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  cmd_lock; TYPE_1__* tx_queue; } ;
struct net_device {int dummy; } ;
struct Vmxnet3_TxDataDesc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_CMD_GET_TXDATA_DESC_SIZE ; 
 int FUNC0 (struct vmxnet3_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMXNET3_REG_CMD ; 
 int VMXNET3_TXDATA_DESC_MAX_SIZE ; 
 int VMXNET3_TXDATA_DESC_MIN_SIZE ; 
 int VMXNET3_TXDATA_DESC_SIZE_MASK ; 
 scalar_t__ FUNC1 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmxnet3_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct vmxnet3_adapter*) ; 
 int FUNC8 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct vmxnet3_adapter*) ; 

__attribute__((used)) static int
FUNC11(struct net_device *netdev)
{
	struct vmxnet3_adapter *adapter;
	int err, i;

	adapter = FUNC3(netdev);

	for (i = 0; i < adapter->num_tx_queues; i++)
		FUNC4(&adapter->tx_queue[i].tx_lock);

	if (FUNC1(adapter)) {
		unsigned long flags;
		u16 txdata_desc_size;

		FUNC5(&adapter->cmd_lock, flags);
		FUNC2(adapter, VMXNET3_REG_CMD,
				       VMXNET3_CMD_GET_TXDATA_DESC_SIZE);
		txdata_desc_size = FUNC0(adapter,
							 VMXNET3_REG_CMD);
		FUNC6(&adapter->cmd_lock, flags);

		if ((txdata_desc_size < VMXNET3_TXDATA_DESC_MIN_SIZE) ||
		    (txdata_desc_size > VMXNET3_TXDATA_DESC_MAX_SIZE) ||
		    (txdata_desc_size & VMXNET3_TXDATA_DESC_SIZE_MASK)) {
			adapter->txdata_desc_size =
				sizeof(struct Vmxnet3_TxDataDesc);
		} else {
			adapter->txdata_desc_size = txdata_desc_size;
		}
	} else {
		adapter->txdata_desc_size = sizeof(struct Vmxnet3_TxDataDesc);
	}

	err = FUNC8(adapter,
				    adapter->tx_ring_size,
				    adapter->rx_ring_size,
				    adapter->rx_ring2_size,
				    adapter->txdata_desc_size,
				    adapter->rxdata_desc_size);
	if (err)
		goto queue_err;

	err = FUNC7(adapter);
	if (err)
		goto activate_err;

	return 0;

activate_err:
	FUNC9(adapter);
	FUNC10(adapter);
queue_err:
	return err;
}
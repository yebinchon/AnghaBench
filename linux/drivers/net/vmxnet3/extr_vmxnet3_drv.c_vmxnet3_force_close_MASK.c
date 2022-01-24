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
struct vmxnet3_adapter {int num_rx_queues; int /*<<< orphan*/  netdev; int /*<<< orphan*/  state; TYPE_1__* rx_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMXNET3_STATE_BIT_QUIESCED ; 
 int /*<<< orphan*/  VMXNET3_STATE_BIT_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(struct vmxnet3_adapter *adapter)
{
	int i;

	/*
	 * we must clear VMXNET3_STATE_BIT_RESETTING, otherwise
	 * vmxnet3_close() will deadlock.
	 */
	FUNC0(FUNC4(VMXNET3_STATE_BIT_RESETTING, &adapter->state));

	/* we need to enable NAPI, otherwise dev_close will deadlock */
	for (i = 0; i < adapter->num_rx_queues; i++)
		FUNC3(&adapter->rx_queue[i].napi);
	/*
	 * Need to clear the quiesce bit to ensure that vmxnet3_close
	 * can quiesce the device properly
	 */
	FUNC1(VMXNET3_STATE_BIT_QUIESCED, &adapter->state);
	FUNC2(adapter->netdev);
}
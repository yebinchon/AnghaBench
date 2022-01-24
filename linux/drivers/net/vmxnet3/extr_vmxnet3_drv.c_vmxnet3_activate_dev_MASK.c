#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vmxnet3_adapter {int num_rx_queues; int /*<<< orphan*/  state; TYPE_4__* rx_queue; TYPE_5__* netdev; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  shared_pa; TYPE_2__* tx_queue; int /*<<< orphan*/  rx_buf_per_pkt; int /*<<< orphan*/  skb_buf_size; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int /*<<< orphan*/  napi; TYPE_3__* rx_ring; } ;
struct TYPE_10__ {int /*<<< orphan*/  next2fill; int /*<<< orphan*/  size; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; } ;
struct TYPE_9__ {TYPE_1__ tx_ring; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  VMXNET3_CMD_ACTIVATE_DEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vmxnet3_adapter*,int /*<<< orphan*/ ) ; 
 int VMXNET3_REG_ALIGN ; 
 int /*<<< orphan*/  VMXNET3_REG_CMD ; 
 int /*<<< orphan*/  VMXNET3_REG_DSAH ; 
 int /*<<< orphan*/  VMXNET3_REG_DSAL ; 
 scalar_t__ VMXNET3_REG_RXPROD ; 
 scalar_t__ VMXNET3_REG_RXPROD2 ; 
 int /*<<< orphan*/  VMXNET3_STATE_BIT_QUIESCED ; 
 int /*<<< orphan*/  FUNC3 (struct vmxnet3_adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct vmxnet3_adapter*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct vmxnet3_adapter*) ; 
 int FUNC15 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct vmxnet3_adapter*) ; 
 int FUNC17 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC20 (struct vmxnet3_adapter*) ; 

int
FUNC21(struct vmxnet3_adapter *adapter)
{
	int err, i;
	u32 ret;
	unsigned long flags;

	FUNC7(adapter->netdev, "%s: skb_buf_size %d, rx_buf_per_pkt %d,"
		" ring sizes %u %u %u\n", adapter->netdev->name,
		adapter->skb_buf_size, adapter->rx_buf_per_pkt,
		adapter->tx_queue[0].tx_ring.size,
		adapter->rx_queue[0].rx_ring[0].size,
		adapter->rx_queue[0].rx_ring[1].size);

	FUNC20(adapter);
	err = FUNC17(adapter);
	if (err) {
		FUNC8(adapter->netdev,
			   "Failed to init rx queue error %d\n", err);
		goto rq_err;
	}

	err = FUNC15(adapter);
	if (err) {
		FUNC8(adapter->netdev,
			   "Failed to setup irq for error %d\n", err);
		goto irq_err;
	}

	FUNC19(adapter);

	FUNC4(adapter, VMXNET3_REG_DSAL, FUNC1(
			       adapter->shared_pa));
	FUNC4(adapter, VMXNET3_REG_DSAH, FUNC0(
			       adapter->shared_pa));
	FUNC9(&adapter->cmd_lock, flags);
	FUNC4(adapter, VMXNET3_REG_CMD,
			       VMXNET3_CMD_ACTIVATE_DEV);
	ret = FUNC2(adapter, VMXNET3_REG_CMD);
	FUNC10(&adapter->cmd_lock, flags);

	if (ret != 0) {
		FUNC8(adapter->netdev,
			   "Failed to activate dev: error %u\n", ret);
		err = -EINVAL;
		goto activate_err;
	}

	FUNC14(adapter);

	for (i = 0; i < adapter->num_rx_queues; i++) {
		FUNC3(adapter,
				VMXNET3_REG_RXPROD + i * VMXNET3_REG_ALIGN,
				adapter->rx_queue[i].rx_ring[0].next2fill);
		FUNC3(adapter, (VMXNET3_REG_RXPROD2 +
				(i * VMXNET3_REG_ALIGN)),
				adapter->rx_queue[i].rx_ring[1].next2fill);
	}

	/* Apply the rx filter settins last. */
	FUNC18(adapter->netdev);

	/*
	 * Check link state when first activating device. It will start the
	 * tx queue if the link is up.
	 */
	FUNC11(adapter, true);
	for (i = 0; i < adapter->num_rx_queues; i++)
		FUNC6(&adapter->rx_queue[i].napi);
	FUNC12(adapter);
	FUNC5(VMXNET3_STATE_BIT_QUIESCED, &adapter->state);
	return 0;

activate_err:
	FUNC4(adapter, VMXNET3_REG_DSAL, 0);
	FUNC4(adapter, VMXNET3_REG_DSAH, 0);
	FUNC13(adapter);
irq_err:
rq_err:
	/* free up buffers we allocated */
	FUNC16(adapter);
	return err;
}
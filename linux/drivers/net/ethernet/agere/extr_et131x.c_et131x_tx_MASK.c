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
struct tx_ring {int used; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct et131x_adapter {int flags; TYPE_2__* netdev; struct tx_ring tx_ring; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_3__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int FMP_ADAPTER_FAIL_SEND_MASK ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int NUM_TCB ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct et131x_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,struct et131x_adapter*) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb, struct net_device *netdev)
{
	struct et131x_adapter *adapter = FUNC1(netdev);
	struct tx_ring *tx_ring = &adapter->tx_ring;

	/* stop the queue if it's getting full */
	if (tx_ring->used >= NUM_TCB - 1 && !FUNC3(netdev))
		FUNC4(netdev);

	/* Save the timestamp for the TX timeout watchdog */
	FUNC5(netdev);

	/* TCB is not available */
	if (tx_ring->used >= NUM_TCB)
		goto drop_err;

	if ((adapter->flags & FMP_ADAPTER_FAIL_SEND_MASK) ||
	    !FUNC2(netdev))
		goto drop_err;

	if (FUNC6(skb, adapter))
		goto drop_err;

	return NETDEV_TX_OK;

drop_err:
	FUNC0(skb);
	adapter->netdev->stats.tx_dropped++;
	return NETDEV_TX_OK;
}
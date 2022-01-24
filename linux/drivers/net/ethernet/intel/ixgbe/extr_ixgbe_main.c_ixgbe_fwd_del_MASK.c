#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ixgbe_ring {int /*<<< orphan*/ * netdev; struct ixgbe_q_vector* q_vector; } ;
struct ixgbe_q_vector {int /*<<< orphan*/  napi; } ;
struct ixgbe_fwd_adapter {unsigned int rx_base_queue; int /*<<< orphan*/  pool; TYPE_1__* netdev; } ;
struct ixgbe_adapter {unsigned int num_rx_queues_per_pool; int /*<<< orphan*/  fwd_bitmask; int /*<<< orphan*/  netdev; struct ixgbe_ring** rx_ring; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_fwd_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ixgbe_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static void FUNC10(struct net_device *pdev, void *priv)
{
	struct ixgbe_fwd_adapter *accel = priv;
	struct ixgbe_adapter *adapter = FUNC5(pdev);
	unsigned int rxbase = accel->rx_base_queue;
	unsigned int i;

	/* delete unicast filter associated with offloaded interface */
	FUNC2(adapter, accel->netdev->dev_addr,
			     FUNC0(accel->pool));

	/* Allow remaining Rx packets to get flushed out of the
	 * Rx FIFO before we drop the netdev for the ring.
	 */
	FUNC9(10000, 20000);

	for (i = 0; i < adapter->num_rx_queues_per_pool; i++) {
		struct ixgbe_ring *ring = adapter->rx_ring[rxbase + i];
		struct ixgbe_q_vector *qv = ring->q_vector;

		/* Make sure we aren't processing any packets and clear
		 * netdev to shut down the ring.
		 */
		if (FUNC8(adapter->netdev))
			FUNC4(&qv->napi);
		ring->netdev = NULL;
	}

	/* unbind the queues and drop the subordinate channel config */
	FUNC7(pdev, accel->netdev);
	FUNC6(accel->netdev, 0);

	FUNC1(accel->pool, adapter->fwd_bitmask);
	FUNC3(accel);
}
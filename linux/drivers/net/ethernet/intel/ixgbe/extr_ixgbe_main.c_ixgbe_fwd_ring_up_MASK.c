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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct ixgbe_fwd_adapter {int pool; int rx_base_queue; int tx_base_queue; struct net_device* netdev; } ;
struct ixgbe_adapter {int num_rx_queues_per_pool; int /*<<< orphan*/  fwd_bitmask; int /*<<< orphan*/  netdev; TYPE_2__** rx_ring; int /*<<< orphan*/  num_rx_pools; TYPE_1__* ring_feature; } ;
struct TYPE_4__ {struct net_device* netdev; } ;
struct TYPE_3__ {int indices; } ;

/* Variables and functions */
 size_t RING_F_RSS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ixgbe_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_fwd_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct ixgbe_adapter *adapter,
			     struct ixgbe_fwd_adapter *accel)
{
	u16 rss_i = adapter->ring_feature[RING_F_RSS].indices;
	int num_tc = FUNC8(adapter->netdev);
	struct net_device *vdev = accel->netdev;
	int i, baseq, err;

	baseq = accel->pool * adapter->num_rx_queues_per_pool;
	FUNC6(vdev, "pool %i:%i queues %i:%i\n",
		   accel->pool, adapter->num_rx_pools,
		   baseq, baseq + adapter->num_rx_queues_per_pool);

	accel->rx_base_queue = baseq;
	accel->tx_base_queue = baseq;

	/* record configuration for macvlan interface in vdev */
	for (i = 0; i < num_tc; i++)
		FUNC5(adapter->netdev, vdev,
					     i, rss_i, baseq + (rss_i * i));

	for (i = 0; i < adapter->num_rx_queues_per_pool; i++)
		adapter->rx_ring[baseq + i]->netdev = vdev;

	/* Guarantee all rings are updated before we update the
	 * MAC address filter.
	 */
	FUNC11();

	/* ixgbe_add_mac_filter will return an index if it succeeds, so we
	 * need to only treat it as an error value if it is negative.
	 */
	err = FUNC2(adapter, vdev->dev_addr,
				   FUNC0(accel->pool));
	if (err >= 0)
		return 0;

	/* if we cannot add the MAC rule then disable the offload */
	FUNC4(vdev);

	for (i = 0; i < adapter->num_rx_queues_per_pool; i++)
		adapter->rx_ring[baseq + i]->netdev = NULL;

	FUNC7(vdev, "L2FW offload disabled due to L2 filter error\n");

	/* unbind the queues and drop the subordinate channel config */
	FUNC10(adapter->netdev, vdev);
	FUNC9(vdev, 0);

	FUNC1(accel->pool, adapter->fwd_bitmask);
	FUNC3(accel);

	return err;
}
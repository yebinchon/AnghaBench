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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct iavf_ring {int dummy; } ;
struct iavf_adapter {unsigned int num_active_queues; struct iavf_ring* rx_rings; struct iavf_ring* tx_rings; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 unsigned int IAVF_MAX_REQ_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,struct iavf_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,struct iavf_ring*) ; 
 int /*<<< orphan*/  iavf_gstrings_stats ; 
 struct iavf_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
				   struct ethtool_stats *stats, u64 *data)
{
	struct iavf_adapter *adapter = FUNC2(netdev);
	unsigned int i;

	FUNC0(&data, adapter, iavf_gstrings_stats);

	FUNC3();
	for (i = 0; i < IAVF_MAX_REQ_QUEUES; i++) {
		struct iavf_ring *ring;

		/* Avoid accessing un-allocated queues */
		ring = (i < adapter->num_active_queues ?
			&adapter->tx_rings[i] : NULL);
		FUNC1(&data, ring);

		/* Avoid accessing un-allocated queues */
		ring = (i < adapter->num_active_queues ?
			&adapter->rx_rings[i] : NULL);
		FUNC1(&data, ring);
	}
	FUNC4();
}
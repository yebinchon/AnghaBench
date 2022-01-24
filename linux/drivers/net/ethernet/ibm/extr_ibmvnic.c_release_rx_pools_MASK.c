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
struct ibmvnic_rx_pool {int size; struct ibmvnic_rx_pool* rx_buff; int /*<<< orphan*/ * skb; int /*<<< orphan*/  long_term_buff; struct ibmvnic_rx_pool* free_map; } ;
struct ibmvnic_adapter {int num_active_rx_pools; struct ibmvnic_rx_pool* rx_pool; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvnic_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvnic_rx_pool*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(struct ibmvnic_adapter *adapter)
{
	struct ibmvnic_rx_pool *rx_pool;
	int i, j;

	if (!adapter->rx_pool)
		return;

	for (i = 0; i < adapter->num_active_rx_pools; i++) {
		rx_pool = &adapter->rx_pool[i];

		FUNC3(adapter->netdev, "Releasing rx_pool[%d]\n", i);

		FUNC2(rx_pool->free_map);
		FUNC1(adapter, &rx_pool->long_term_buff);

		if (!rx_pool->rx_buff)
			continue;

		for (j = 0; j < rx_pool->size; j++) {
			if (rx_pool->rx_buff[j].skb) {
				FUNC0(rx_pool->rx_buff[j].skb);
				rx_pool->rx_buff[j].skb = NULL;
			}
		}

		FUNC2(rx_pool->rx_buff);
	}

	FUNC2(adapter->rx_pool);
	adapter->rx_pool = NULL;
	adapter->num_active_rx_pools = 0;
}
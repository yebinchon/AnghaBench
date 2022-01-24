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
struct ibmvnic_adapter {int num_active_tx_pools; int /*<<< orphan*/ * tso_pool; int /*<<< orphan*/ * tx_pool; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibmvnic_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC2(struct ibmvnic_adapter *adapter)
{
	int tx_scrqs;
	int i;

	if (!adapter->tx_pool || !adapter->tso_pool)
		return;

	tx_scrqs = adapter->num_active_tx_pools;

	/* Free any remaining skbs in the tx buffer pools */
	for (i = 0; i < tx_scrqs; i++) {
		FUNC1(adapter->netdev, "Cleaning tx_pool[%d]\n", i);
		FUNC0(adapter, &adapter->tx_pool[i]);
		FUNC0(adapter, &adapter->tso_pool[i]);
	}
}
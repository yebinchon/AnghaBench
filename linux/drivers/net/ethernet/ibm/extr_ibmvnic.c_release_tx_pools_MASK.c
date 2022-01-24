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
struct ibmvnic_adapter {int num_active_tx_pools; int /*<<< orphan*/ * tso_pool; int /*<<< orphan*/ * tx_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvnic_adapter*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ibmvnic_adapter *adapter)
{
	int i;

	if (!adapter->tx_pool)
		return;

	for (i = 0; i < adapter->num_active_tx_pools; i++) {
		FUNC1(adapter, &adapter->tx_pool[i]);
		FUNC1(adapter, &adapter->tso_pool[i]);
	}

	FUNC0(adapter->tx_pool);
	adapter->tx_pool = NULL;
	FUNC0(adapter->tso_pool);
	adapter->tso_pool = NULL;
	adapter->num_active_tx_pools = 0;
}
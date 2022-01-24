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
struct ibmvnic_adapter {int num_active_rx_napi; int napi_enabled; int /*<<< orphan*/ * napi; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ibmvnic_adapter *adapter)
{
	int i;

	if (!adapter->napi)
		return;

	for (i = 0; i < adapter->num_active_rx_napi; i++) {
		FUNC1(adapter->netdev, "Releasing napi[%d]\n", i);
		FUNC2(&adapter->napi[i]);
	}

	FUNC0(adapter->napi);
	adapter->napi = NULL;
	adapter->num_active_rx_napi = 0;
	adapter->napi_enabled = false;
}
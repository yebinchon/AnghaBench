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
struct ibmvnic_adapter {int napi_enabled; int req_rx_queues; int /*<<< orphan*/ * napi; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC2(struct ibmvnic_adapter *adapter)
{
	int i;

	if (!adapter->napi_enabled)
		return;

	for (i = 0; i < adapter->req_rx_queues; i++) {
		FUNC1(adapter->netdev, "Disabling napi[%d]\n", i);
		FUNC0(&adapter->napi[i]);
	}

	adapter->napi_enabled = false;
}
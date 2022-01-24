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
struct napi_struct {int dummy; } ;
struct ibmvnic_adapter {int req_rx_queues; int num_active_rx_napi; int /*<<< orphan*/ * napi; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int /*<<< orphan*/  ibmvnic_poll ; 
 int /*<<< orphan*/ * FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ibmvnic_adapter *adapter)
{
	int i;

	adapter->napi = FUNC0(adapter->req_rx_queues,
				sizeof(struct napi_struct), GFP_KERNEL);
	if (!adapter->napi)
		return -ENOMEM;

	for (i = 0; i < adapter->req_rx_queues; i++) {
		FUNC1(adapter->netdev, "Adding napi[%d]\n", i);
		FUNC2(adapter->netdev, &adapter->napi[i],
			       ibmvnic_poll, NAPI_POLL_WEIGHT);
	}

	adapter->num_active_rx_napi = adapter->req_rx_queues;
	return 0;
}
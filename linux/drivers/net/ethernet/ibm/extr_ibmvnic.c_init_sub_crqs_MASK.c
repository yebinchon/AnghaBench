#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ibmvnic_sub_crq_queue {int pool_index; int scrq_num; } ;
struct ibmvnic_adapter {int req_tx_queues; int req_rx_queues; int min_tx_queues; int min_rx_queues; struct ibmvnic_sub_crq_queue** tx_scrq; int /*<<< orphan*/  num_active_rx_scrqs; struct ibmvnic_sub_crq_queue** rx_scrq; int /*<<< orphan*/  num_active_tx_scrqs; int /*<<< orphan*/  netdev; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct ibmvnic_sub_crq_queue* FUNC2 (struct ibmvnic_adapter*) ; 
 void* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvnic_sub_crq_queue**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*,int) ; 

__attribute__((used)) static int FUNC7(struct ibmvnic_adapter *adapter)
{
	struct device *dev = &adapter->vdev->dev;
	struct ibmvnic_sub_crq_queue **allqueues;
	int registered_queues = 0;
	int total_queues;
	int more = 0;
	int i;

	total_queues = adapter->req_tx_queues + adapter->req_rx_queues;

	allqueues = FUNC3(total_queues, sizeof(*allqueues), GFP_KERNEL);
	if (!allqueues)
		return -1;

	for (i = 0; i < total_queues; i++) {
		allqueues[i] = FUNC2(adapter);
		if (!allqueues[i]) {
			FUNC1(dev, "Couldn't allocate all sub-crqs\n");
			break;
		}
		registered_queues++;
	}

	/* Make sure we were able to register the minimum number of queues */
	if (registered_queues <
	    adapter->min_tx_queues + adapter->min_rx_queues) {
		FUNC0(dev, "Fatal: Couldn't init  min number of sub-crqs\n");
		goto tx_failed;
	}

	/* Distribute the failed allocated queues*/
	for (i = 0; i < total_queues - registered_queues + more ; i++) {
		FUNC5(adapter->netdev, "Reducing number of queues\n");
		switch (i % 3) {
		case 0:
			if (adapter->req_rx_queues > adapter->min_rx_queues)
				adapter->req_rx_queues--;
			else
				more++;
			break;
		case 1:
			if (adapter->req_tx_queues > adapter->min_tx_queues)
				adapter->req_tx_queues--;
			else
				more++;
			break;
		}
	}

	adapter->tx_scrq = FUNC3(adapter->req_tx_queues,
				   sizeof(*adapter->tx_scrq), GFP_KERNEL);
	if (!adapter->tx_scrq)
		goto tx_failed;

	for (i = 0; i < adapter->req_tx_queues; i++) {
		adapter->tx_scrq[i] = allqueues[i];
		adapter->tx_scrq[i]->pool_index = i;
		adapter->num_active_tx_scrqs++;
	}

	adapter->rx_scrq = FUNC3(adapter->req_rx_queues,
				   sizeof(*adapter->rx_scrq), GFP_KERNEL);
	if (!adapter->rx_scrq)
		goto rx_failed;

	for (i = 0; i < adapter->req_rx_queues; i++) {
		adapter->rx_scrq[i] = allqueues[i + adapter->req_tx_queues];
		adapter->rx_scrq[i]->scrq_num = i;
		adapter->num_active_rx_scrqs++;
	}

	FUNC4(allqueues);
	return 0;

rx_failed:
	FUNC4(adapter->tx_scrq);
	adapter->tx_scrq = NULL;
tx_failed:
	for (i = 0; i < registered_queues; i++)
		FUNC6(adapter, allqueues[i], 1);
	FUNC4(allqueues);
	return -1;
}
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
struct net_device {int dummy; } ;
struct ibmvnic_adapter {int req_tx_queues; int req_rx_queues; TYPE_1__** rx_scrq; TYPE_1__** tx_scrq; struct net_device* netdev; } ;
struct TYPE_2__ {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvnic_adapter*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 

__attribute__((used)) static void FUNC3(struct ibmvnic_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int i;

	if (adapter->tx_scrq) {
		for (i = 0; i < adapter->req_tx_queues; i++)
			if (adapter->tx_scrq[i]->irq) {
				FUNC2(netdev,
					   "Disabling tx_scrq[%d] irq\n", i);
				FUNC1(adapter, adapter->tx_scrq[i]);
				FUNC0(adapter->tx_scrq[i]->irq);
			}
	}

	if (adapter->rx_scrq) {
		for (i = 0; i < adapter->req_rx_queues; i++) {
			if (adapter->rx_scrq[i]->irq) {
				FUNC2(netdev,
					   "Disabling rx_scrq[%d] irq\n", i);
				FUNC1(adapter, adapter->rx_scrq[i]);
				FUNC0(adapter->rx_scrq[i]->irq);
			}
		}
	}
}
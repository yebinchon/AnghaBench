#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* len; void* ioba; int /*<<< orphan*/  cmd; int /*<<< orphan*/  first; } ;
union ibmvnic_crq {TYPE_1__ request_statistics; } ;
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct ibmvnic_statistics {int dummy; } ;
struct ibmvnic_adapter {int stats_token; int req_tx_queues; int req_rx_queues; TYPE_3__* rx_stats_buffers; TYPE_2__* tx_stats_buffers; int /*<<< orphan*/  stats_done; } ;
struct ethtool_stats {int dummy; } ;
typedef  int /*<<< orphan*/  crq ;
struct TYPE_9__ {int /*<<< orphan*/  offset; } ;
struct TYPE_8__ {int /*<<< orphan*/  interrupts; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
struct TYPE_7__ {int /*<<< orphan*/  dropped_packets; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  IBMVNIC_CRQ_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQUEST_STATISTICS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (struct ibmvnic_adapter*,union ibmvnic_crq*) ; 
 TYPE_4__* ibmvnic_stats ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (union ibmvnic_crq*,int /*<<< orphan*/ ,int) ; 
 struct ibmvnic_adapter* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev,
				      struct ethtool_stats *stats, u64 *data)
{
	struct ibmvnic_adapter *adapter = FUNC7(dev);
	union ibmvnic_crq crq;
	int i, j;
	int rc;

	FUNC6(&crq, 0, sizeof(crq));
	crq.request_statistics.first = IBMVNIC_CRQ_CMD;
	crq.request_statistics.cmd = REQUEST_STATISTICS;
	crq.request_statistics.ioba = FUNC3(adapter->stats_token);
	crq.request_statistics.len =
	    FUNC3(sizeof(struct ibmvnic_statistics));

	/* Wait for data to be written */
	FUNC5(&adapter->stats_done);
	rc = FUNC4(adapter, &crq);
	if (rc)
		return;
	FUNC8(&adapter->stats_done);

	for (i = 0; i < FUNC0(ibmvnic_stats); i++)
		data[i] = FUNC2(FUNC1(adapter,
						ibmvnic_stats[i].offset));

	for (j = 0; j < adapter->req_tx_queues; j++) {
		data[i] = adapter->tx_stats_buffers[j].packets;
		i++;
		data[i] = adapter->tx_stats_buffers[j].bytes;
		i++;
		data[i] = adapter->tx_stats_buffers[j].dropped_packets;
		i++;
	}

	for (j = 0; j < adapter->req_rx_queues; j++) {
		data[i] = adapter->rx_stats_buffers[j].packets;
		i++;
		data[i] = adapter->rx_stats_buffers[j].bytes;
		i++;
		data[i] = adapter->rx_stats_buffers[j].interrupts;
		i++;
	}
}
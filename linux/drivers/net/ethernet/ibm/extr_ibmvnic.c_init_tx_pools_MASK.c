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
struct ibmvnic_tx_pool {int dummy; } ;
struct ibmvnic_adapter {int num_active_tx_pools; int /*<<< orphan*/ * tso_pool; scalar_t__ req_mtu; int /*<<< orphan*/  req_tx_entries_per_subcrq; int /*<<< orphan*/ * tx_pool; TYPE_1__* login_rsp_buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_txsubm_subcrqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IBMVNIC_TSO_BUFS ; 
 scalar_t__ IBMVNIC_TSO_BUF_SZ ; 
 scalar_t__ VLAN_HLEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 struct ibmvnic_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvnic_adapter*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct ibmvnic_adapter *adapter = FUNC3(netdev);
	int tx_subcrqs;
	int i, rc;

	tx_subcrqs = FUNC0(adapter->login_rsp_buf->num_txsubm_subcrqs);
	adapter->tx_pool = FUNC2(tx_subcrqs,
				   sizeof(struct ibmvnic_tx_pool), GFP_KERNEL);
	if (!adapter->tx_pool)
		return -1;

	adapter->tso_pool = FUNC2(tx_subcrqs,
				    sizeof(struct ibmvnic_tx_pool), GFP_KERNEL);
	if (!adapter->tso_pool)
		return -1;

	adapter->num_active_tx_pools = tx_subcrqs;

	for (i = 0; i < tx_subcrqs; i++) {
		rc = FUNC1(netdev, &adapter->tx_pool[i],
				      adapter->req_tx_entries_per_subcrq,
				      adapter->req_mtu + VLAN_HLEN);
		if (rc) {
			FUNC4(adapter);
			return rc;
		}

		rc = FUNC1(netdev, &adapter->tso_pool[i],
				      IBMVNIC_TSO_BUFS,
				      IBMVNIC_TSO_BUF_SZ);
		if (rc) {
			FUNC4(adapter);
			return rc;
		}
	}

	return 0;
}
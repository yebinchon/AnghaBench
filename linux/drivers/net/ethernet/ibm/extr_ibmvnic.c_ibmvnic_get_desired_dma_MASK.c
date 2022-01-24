#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct iommu_table {int dummy; } ;
struct ibmvnic_statistics {int dummy; } ;
struct ibmvnic_adapter {int req_tx_queues; int req_rx_queues; TYPE_2__* rx_pool; TYPE_1__* login_rsp_buf; } ;
struct TYPE_4__ {unsigned long size; int buff_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_rxadd_subcrqs; } ;

/* Variables and functions */
 int IBMVNIC_IO_ENTITLEMENT_DEFAULT ; 
 unsigned long FUNC0 (int,struct iommu_table*) ; 
 unsigned long PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ *) ; 
 struct iommu_table* FUNC3 (int /*<<< orphan*/ *) ; 
 struct ibmvnic_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static unsigned long FUNC5(struct vio_dev *vdev)
{
	struct net_device *netdev = FUNC2(&vdev->dev);
	struct ibmvnic_adapter *adapter;
	struct iommu_table *tbl;
	unsigned long ret = 0;
	int i;

	tbl = FUNC3(&vdev->dev);

	/* netdev inits at probe time along with the structures we need below*/
	if (!netdev)
		return FUNC0(IBMVNIC_IO_ENTITLEMENT_DEFAULT, tbl);

	adapter = FUNC4(netdev);

	ret += PAGE_SIZE; /* the crq message queue */
	ret += FUNC0(sizeof(struct ibmvnic_statistics), tbl);

	for (i = 0; i < adapter->req_tx_queues + adapter->req_rx_queues; i++)
		ret += 4 * PAGE_SIZE; /* the scrq message queue */

	for (i = 0; i < FUNC1(adapter->login_rsp_buf->num_rxadd_subcrqs);
	     i++)
		ret += adapter->rx_pool[i].size *
		    FUNC0(adapter->rx_pool[i].buff_size, tbl);

	return ret;
}
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
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct ibmveth_adapter {TYPE_1__* rx_buff_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int IBMVETH_NUM_BUFF_POOLS ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ibmveth_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct vio_dev *dev)
{
	struct net_device *netdev = FUNC0(&dev->dev);
	struct ibmveth_adapter *adapter = FUNC4(netdev);
	int i;

	for (i = 0; i < IBMVETH_NUM_BUFF_POOLS; i++)
		FUNC3(&adapter->rx_buff_pool[i].kobj);

	FUNC5(netdev);

	FUNC2(netdev);
	FUNC1(&dev->dev, NULL);

	return 0;
}
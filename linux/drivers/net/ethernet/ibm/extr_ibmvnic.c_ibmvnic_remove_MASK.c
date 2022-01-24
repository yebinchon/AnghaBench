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
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct ibmvnic_adapter {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  VNIC_REMOVED ; 
 int /*<<< orphan*/  VNIC_REMOVING ; 
 int /*<<< orphan*/  dev_attr_failover ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct ibmvnic_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static int FUNC13(struct vio_dev *dev)
{
	struct net_device *netdev = FUNC0(&dev->dev);
	struct ibmvnic_adapter *adapter = FUNC4(netdev);

	adapter->state = VNIC_REMOVING;
	FUNC10();
	FUNC12(netdev);

	FUNC6(adapter);
	FUNC9(adapter, 1);
	FUNC5(adapter);

	FUNC8(adapter);
	FUNC7(adapter);

	adapter->state = VNIC_REMOVED;

	FUNC11();
	FUNC2(&dev->dev, &dev_attr_failover);
	FUNC3(netdev);
	FUNC1(&dev->dev, NULL);

	return 0;
}
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
struct net_device {int mtu; } ;
struct ena_adapter {int /*<<< orphan*/  ena_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct ena_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_adapter*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_adapter*,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, int new_mtu)
{
	struct ena_adapter *adapter = FUNC1(dev);
	int ret;

	ret = FUNC0(adapter->ena_dev, new_mtu);
	if (!ret) {
		FUNC2(adapter, drv, dev, "set MTU to %d\n", new_mtu);
		FUNC4(adapter, new_mtu);
		dev->mtu = new_mtu;
	} else {
		FUNC3(adapter, drv, dev, "Failed to set MTU to %d\n",
			  new_mtu);
	}

	return ret;
}
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
struct hinic_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int FUNC0 (struct hinic_dev*,int) ; 
 struct hinic_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_dev*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_dev*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, int new_mtu)
{
	struct hinic_dev *nic_dev = FUNC1(netdev);
	int err;

	FUNC3(nic_dev, drv, netdev, "set_mtu = %d\n", new_mtu);

	err = FUNC0(nic_dev, new_mtu);
	if (err)
		FUNC2(nic_dev, drv, netdev, "Failed to set port mtu\n");
	else
		netdev->mtu = new_mtu;

	return err;
}
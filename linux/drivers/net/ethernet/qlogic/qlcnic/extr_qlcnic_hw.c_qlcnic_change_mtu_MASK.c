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
struct qlcnic_adapter {int dummy; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 struct qlcnic_adapter* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct qlcnic_adapter*,int) ; 

int FUNC2(struct net_device *netdev, int mtu)
{
	struct qlcnic_adapter *adapter = FUNC0(netdev);
	int rc = 0;

	rc = FUNC1(adapter, mtu);

	if (!rc)
		netdev->mtu = mtu;

	return rc;
}
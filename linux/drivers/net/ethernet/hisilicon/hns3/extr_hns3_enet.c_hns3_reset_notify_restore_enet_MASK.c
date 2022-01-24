#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; } ;
struct TYPE_6__ {struct net_device* netdev; } ;
struct hnae3_handle {TYPE_2__* ae_algo; int /*<<< orphan*/  netdev_flags; TYPE_3__ kinfo; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* restore_vlan_table ) (struct hnae3_handle*) ;} ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hnae3_handle*) ; 

__attribute__((used)) static int FUNC6(struct hnae3_handle *handle)
{
	struct net_device *netdev = handle->kinfo.netdev;
	bool vlan_filter_enable;
	int ret;

	ret = FUNC1(netdev, false);
	if (ret)
		return ret;

	ret = FUNC2(netdev);
	if (ret)
		return ret;

	ret = FUNC4(netdev, handle->netdev_flags);
	if (ret)
		return ret;

	vlan_filter_enable = netdev->flags & IFF_PROMISC ? false : true;
	FUNC0(netdev, vlan_filter_enable);

	if (handle->ae_algo->ops->restore_vlan_table)
		handle->ae_algo->ops->restore_vlan_table(handle);

	return FUNC3(netdev);
}
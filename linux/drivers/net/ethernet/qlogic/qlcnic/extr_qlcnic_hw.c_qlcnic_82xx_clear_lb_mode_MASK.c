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
typedef  int /*<<< orphan*/  u8 ;
struct qlcnic_adapter {struct net_device* netdev; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  VPORT_MISS_MODE_ACCEPT_ALL ; 
 int /*<<< orphan*/  VPORT_MISS_MODE_ACCEPT_MULTI ; 
 int /*<<< orphan*/  VPORT_MISS_MODE_DROP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 

int FUNC3(struct qlcnic_adapter *adapter, u8 mode)
{
	struct net_device *netdev = adapter->netdev;

	mode = VPORT_MISS_MODE_DROP;
	FUNC2(adapter, 0);

	if (netdev->flags & IFF_PROMISC)
		mode = VPORT_MISS_MODE_ACCEPT_ALL;
	else if (netdev->flags & IFF_ALLMULTI)
		mode = VPORT_MISS_MODE_ACCEPT_MULTI;

	FUNC1(adapter, mode);
	FUNC0(1000);
	return 0;
}
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
struct net_device {int flags; int /*<<< orphan*/  dismantle; int /*<<< orphan*/  dev_addr; TYPE_1__* netdev_ops; } ;
struct macvlan_dev {int flags; int /*<<< orphan*/  port; int /*<<< orphan*/ * accel_priv; struct net_device* lowerdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ndo_dfwd_del_station ) (struct net_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int MACVLAN_FLAG_NOPROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct macvlan_dev*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct macvlan_dev* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct macvlan_dev *vlan = FUNC7(dev);
	struct net_device *lowerdev = vlan->lowerdev;

	if (vlan->accel_priv) {
		lowerdev->netdev_ops->ndo_dfwd_del_station(lowerdev,
							   vlan->accel_priv);
		vlan->accel_priv = NULL;
	}

	FUNC4(lowerdev, dev);
	FUNC0(lowerdev, dev);

	if (FUNC6(vlan->port)) {
		if (!(vlan->flags & MACVLAN_FLAG_NOPROMISC))
			FUNC2(lowerdev, -1);
		goto hash_del;
	}

	if (dev->flags & IFF_ALLMULTI)
		FUNC1(lowerdev, -1);

	if (dev->flags & IFF_PROMISC)
		FUNC2(lowerdev, -1);

	FUNC3(lowerdev, dev->dev_addr);

hash_del:
	FUNC5(vlan, !dev->dismantle);
	return 0;
}
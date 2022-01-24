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
struct net_device {int flags; } ;
struct macvlan_dev {struct net_device* lowerdev; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 struct macvlan_dev* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, int change)
{
	struct macvlan_dev *vlan = FUNC2(dev);
	struct net_device *lowerdev = vlan->lowerdev;

	if (dev->flags & IFF_UP) {
		if (change & IFF_ALLMULTI)
			FUNC0(lowerdev, dev->flags & IFF_ALLMULTI ? 1 : -1);
		if (change & IFF_PROMISC)
			FUNC1(lowerdev,
					    dev->flags & IFF_PROMISC ? 1 : -1);

	}
}
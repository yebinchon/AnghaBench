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
struct net_device {int dummy; } ;
struct hostap_interface {TYPE_1__* local; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {struct net_device* stadev; struct net_device* apdev; struct net_device* ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct hostap_interface* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

void FUNC4(struct net_device *dev, int rtnl_locked,
			     int remove_from_list)
{
	struct hostap_interface *iface;

	if (!dev)
		return;

	iface = FUNC1(dev);

	if (remove_from_list) {
		FUNC0(&iface->list);
	}

	if (dev == iface->local->ddev)
		iface->local->ddev = NULL;
	else if (dev == iface->local->apdev)
		iface->local->apdev = NULL;
	else if (dev == iface->local->stadev)
		iface->local->stadev = NULL;

	if (rtnl_locked)
		FUNC3(dev);
	else
		FUNC2(dev);

	/* 'dev->needs_free_netdev = true' implies device data, including
	 * private data, will be freed when the device is removed */
}
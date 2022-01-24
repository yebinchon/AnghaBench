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
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned long NETDEV_UNREGISTER ; 
 int NOTIFY_DONE ; 
 struct net_device* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *unused,
			    unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC1(ptr);

	/* only care about unregister events to drop slave references */
	if (event == NETDEV_UNREGISTER) {
		struct net_device *vrf_dev;

		if (!FUNC2(dev))
			goto out;

		vrf_dev = FUNC0(dev);
		FUNC3(vrf_dev, dev);
	}
out:
	return NOTIFY_DONE;
}
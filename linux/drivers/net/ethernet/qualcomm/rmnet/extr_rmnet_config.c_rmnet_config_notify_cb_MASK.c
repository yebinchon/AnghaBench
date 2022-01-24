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
#define  NETDEV_UNREGISTER 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct net_device* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *nb,
				  unsigned long event, void *data)
{
	struct net_device *dev = FUNC1(data);

	if (!dev)
		return NOTIFY_DONE;

	switch (event) {
	case NETDEV_UNREGISTER:
		FUNC0(dev, "Kernel unregister\n");
		FUNC2(dev);
		break;

	default:
		break;
	}

	return NOTIFY_DONE;
}
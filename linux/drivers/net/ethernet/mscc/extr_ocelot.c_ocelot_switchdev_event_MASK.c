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
 int NOTIFY_DONE ; 
#define  SWITCHDEV_PORT_ATTR_SET 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ocelot_netdevice_dev_check ; 
 int /*<<< orphan*/  ocelot_port_attr_set ; 
 int FUNC1 (struct net_device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *unused,
				  unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC2(ptr);
	int err;

	switch (event) {
	case SWITCHDEV_PORT_ATTR_SET:
		err = FUNC1(dev, ptr,
						     ocelot_netdevice_dev_check,
						     ocelot_port_attr_set);
		return FUNC0(err);
	}

	return NOTIFY_DONE;
}
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
struct team {int /*<<< orphan*/  port_list; } ;
struct net_device {char* name; scalar_t__ type; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  NETDEV_POST_TYPE_CHANGE ; 
 int /*<<< orphan*/  NETDEV_PRE_TYPE_CHANGE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,...) ; 
 struct team* FUNC5 (struct net_device*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
				      struct net_device *port_dev)
{
	struct team *team = FUNC5(dev);
	char *portname = port_dev->name;
	int err;

	if (dev->type == port_dev->type)
		return 0;
	if (!FUNC3(&team->port_list)) {
		FUNC4(dev, "Device %s is of different type\n", portname);
		return -EBUSY;
	}
	err = FUNC0(NETDEV_PRE_TYPE_CHANGE, dev);
	err = FUNC6(err);
	if (err) {
		FUNC4(dev, "Refused to change device type\n");
		return err;
	}
	FUNC2(dev);
	FUNC1(dev);
	FUNC7(dev, port_dev);
	FUNC0(NETDEV_POST_TYPE_CHANGE, dev);
	return 0;
}
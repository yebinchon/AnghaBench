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
struct ocelot_port {int /*<<< orphan*/  ocelot; } ;
struct netdev_notifier_changeupper_info {int /*<<< orphan*/  upper_dev; int /*<<< orphan*/  linking; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
#define  NETDEV_CHANGEUPPER 128 
 struct ocelot_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ocelot_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocelot_port*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ocelot_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocelot_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ocelot_port*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
				       unsigned long event,
				       struct netdev_notifier_changeupper_info *info)
{
	struct ocelot_port *ocelot_port = FUNC0(dev);
	int err = 0;

	switch (event) {
	case NETDEV_CHANGEUPPER:
		if (FUNC1(info->upper_dev)) {
			if (info->linking)
				err = FUNC3(ocelot_port,
							      info->upper_dev);
			else
				FUNC4(ocelot_port,
							 info->upper_dev);

			FUNC7(ocelot_port->ocelot,
					       ocelot_port);
		}
		if (FUNC2(info->upper_dev)) {
			if (info->linking)
				err = FUNC5(ocelot_port,
							   info->upper_dev);
			else
				FUNC6(ocelot_port,
						      info->upper_dev);
		}
		break;
	default:
		break;
	}

	return err;
}
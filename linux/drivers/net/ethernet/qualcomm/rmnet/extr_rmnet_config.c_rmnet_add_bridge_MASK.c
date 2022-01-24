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
struct rmnet_priv {struct net_device* real_dev; } ;
struct rmnet_port {int nr_rmnet_devs; struct net_device* bridge_ep; void* rmnet_mode; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 void* RMNET_EPMODE_BRIDGE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct rmnet_priv* FUNC1 (struct net_device*) ; 
 struct rmnet_port* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 

int FUNC5(struct net_device *rmnet_dev,
		     struct net_device *slave_dev,
		     struct netlink_ext_ack *extack)
{
	struct rmnet_priv *priv = FUNC1(rmnet_dev);
	struct net_device *real_dev = priv->real_dev;
	struct rmnet_port *port, *slave_port;
	int err;

	port = FUNC2(real_dev);

	/* If there is more than one rmnet dev attached, its probably being
	 * used for muxing. Skip the briding in that case
	 */
	if (port->nr_rmnet_devs > 1)
		return -EINVAL;

	if (FUNC3(slave_dev))
		return -EBUSY;

	err = FUNC4(slave_dev);
	if (err)
		return -EBUSY;

	slave_port = FUNC2(slave_dev);
	slave_port->rmnet_mode = RMNET_EPMODE_BRIDGE;
	slave_port->bridge_ep = real_dev;

	port->rmnet_mode = RMNET_EPMODE_BRIDGE;
	port->bridge_ep = slave_dev;

	FUNC0(slave_dev, "registered with rmnet as slave\n");
	return 0;
}
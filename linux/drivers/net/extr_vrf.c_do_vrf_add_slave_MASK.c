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
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  priv_flags; } ;
struct TYPE_2__ {struct net_device* loopback_dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IFF_L3MDEV_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct netlink_ext_ack*) ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct net_device *port_dev,
			    struct netlink_ext_ack *extack)
{
	int ret;

	/* do not allow loopback device to be enslaved to a VRF.
	 * The vrf device acts as the loopback for the vrf.
	 */
	if (port_dev == FUNC2(dev)->loopback_dev) {
		FUNC0(extack,
			       "Can not enslave loopback device to a VRF");
		return -EOPNOTSUPP;
	}

	port_dev->priv_flags |= IFF_L3MDEV_SLAVE;
	ret = FUNC3(port_dev, dev, NULL, NULL, extack);
	if (ret < 0)
		goto err;

	FUNC1(port_dev, extack);

	return 0;

err:
	port_dev->priv_flags &= ~IFF_L3MDEV_SLAVE;
	return ret;
}
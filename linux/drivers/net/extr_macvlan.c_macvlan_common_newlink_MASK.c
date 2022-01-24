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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {scalar_t__ mtu; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; } ;
struct net {int dummy; } ;
struct macvlan_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  vlans; scalar_t__ count; } ;
struct macvlan_dev {scalar_t__ mode; int /*<<< orphan*/  list; int /*<<< orphan*/  flags; int /*<<< orphan*/  set_features; struct macvlan_port* port; struct net_device* dev; struct net_device* lowerdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  ETH_MIN_MTU ; 
 int /*<<< orphan*/  IFF_MACVLAN ; 
 size_t IFLA_ADDRESS ; 
 size_t IFLA_LINK ; 
 size_t IFLA_MACVLAN_FLAGS ; 
 size_t IFLA_MACVLAN_MACADDR_MODE ; 
 size_t IFLA_MACVLAN_MODE ; 
 size_t IFLA_MTU ; 
 int /*<<< orphan*/  MACVLAN_FEATURES ; 
 scalar_t__ MACVLAN_MODE_PASSTHRU ; 
 scalar_t__ MACVLAN_MODE_SOURCE ; 
 scalar_t__ MACVLAN_MODE_VEPA ; 
 struct net_device* FUNC0 (struct net*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct macvlan_dev*,int,struct nlattr**) ; 
 struct net_device* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct macvlan_port*) ; 
 int FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct macvlan_port* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct macvlan_port*) ; 
 struct macvlan_dev* FUNC12 (struct net_device*) ; 
 int FUNC13 (struct net_device*,struct net_device*,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct nlattr*) ; 
 void* FUNC18 (struct nlattr*) ; 
 int FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 

int FUNC21(struct net *src_net, struct net_device *dev,
			   struct nlattr *tb[], struct nlattr *data[],
			   struct netlink_ext_ack *extack)
{
	struct macvlan_dev *vlan = FUNC12(dev);
	struct macvlan_port *port;
	struct net_device *lowerdev;
	int err;
	int macmode;
	bool create = false;

	if (!tb[IFLA_LINK])
		return -EINVAL;

	lowerdev = FUNC0(src_net, FUNC18(tb[IFLA_LINK]));
	if (lowerdev == NULL)
		return -ENODEV;

	/* When creating macvlans or macvtaps on top of other macvlans - use
	 * the real device as the lowerdev.
	 */
	if (FUNC14(lowerdev))
		lowerdev = FUNC6(lowerdev);

	if (!tb[IFLA_MTU])
		dev->mtu = lowerdev->mtu;
	else if (dev->mtu > lowerdev->mtu)
		return -EINVAL;

	/* MTU range: 68 - lowerdev->max_mtu */
	dev->min_mtu = ETH_MIN_MTU;
	dev->max_mtu = lowerdev->max_mtu;

	if (!tb[IFLA_ADDRESS])
		FUNC2(dev);

	if (!FUNC15(lowerdev)) {
		err = FUNC8(lowerdev);
		if (err < 0)
			return err;
		create = true;
	}
	port = FUNC10(lowerdev);

	/* Only 1 macvlan device can be created in passthru mode */
	if (FUNC7(port)) {
		/* The macvlan port must be not created this time,
		 * still goto destroy_macvlan_port for readability.
		 */
		err = -EINVAL;
		goto destroy_macvlan_port;
	}

	vlan->lowerdev = lowerdev;
	vlan->dev      = dev;
	vlan->port     = port;
	vlan->set_features = MACVLAN_FEATURES;

	vlan->mode     = MACVLAN_MODE_VEPA;
	if (data && data[IFLA_MACVLAN_MODE])
		vlan->mode = FUNC18(data[IFLA_MACVLAN_MODE]);

	if (data && data[IFLA_MACVLAN_FLAGS])
		vlan->flags = FUNC17(data[IFLA_MACVLAN_FLAGS]);

	if (vlan->mode == MACVLAN_MODE_PASSTHRU) {
		if (port->count) {
			err = -EINVAL;
			goto destroy_macvlan_port;
		}
		FUNC11(port);
		FUNC1(dev, lowerdev);
	}

	if (data && data[IFLA_MACVLAN_MACADDR_MODE]) {
		if (vlan->mode != MACVLAN_MODE_SOURCE) {
			err = -EINVAL;
			goto destroy_macvlan_port;
		}
		macmode = FUNC18(data[IFLA_MACVLAN_MACADDR_MODE]);
		err = FUNC5(vlan, macmode, data);
		if (err)
			goto destroy_macvlan_port;
	}

	err = FUNC19(dev);
	if (err < 0)
		goto destroy_macvlan_port;

	dev->priv_flags |= IFF_MACVLAN;
	err = FUNC13(lowerdev, dev, extack);
	if (err)
		goto unregister_netdev;

	FUNC4(&vlan->list, &port->vlans);
	FUNC16(lowerdev, dev);
	FUNC3(dev);

	return 0;

unregister_netdev:
	/* macvlan_uninit would free the macvlan port */
	FUNC20(dev);
	return err;
destroy_macvlan_port:
	/* the macvlan port may be freed by macvlan_uninit when fail to register.
	 * so we destroy the macvlan port only when it's valid.
	 */
	if (create && FUNC10(lowerdev))
		FUNC9(port->dev);
	return err;
}
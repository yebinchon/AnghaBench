#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mtu; int /*<<< orphan*/  dev_addr; } ;
struct team_port {int index; TYPE_2__ orig; int /*<<< orphan*/  list; int /*<<< orphan*/  qom_list; struct team* team; struct net_device* dev; } ;
struct team {int /*<<< orphan*/  port_list; TYPE_1__* mode; struct net_device* dev; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {char* name; int flags; int features; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;
struct TYPE_3__ {scalar_t__ port_priv_size; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_ALLMULTI ; 
 int IFF_LOOPBACK ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NETIF_F_LRO ; 
 int NETIF_F_VLAN_CHALLENGED ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct team*) ; 
 int FUNC3 (struct team*,struct team_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct team*,struct team_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct team*) ; 
 int /*<<< orphan*/  FUNC6 (struct team_port*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,struct net_device*) ; 
 int FUNC10 (struct net_device*,struct netlink_ext_ack*) ; 
 int FUNC11 (struct net_device*,int) ; 
 int FUNC12 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct team_port*) ; 
 struct team_port* FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,char*,...) ; 
 scalar_t__ FUNC21 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*,char*,char*) ; 
 int FUNC23 (struct net_device*,int /*<<< orphan*/ ,struct team_port*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct net_device*) ; 
 scalar_t__ FUNC27 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct net_device*) ; 
 int FUNC29 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  team_handle_frame ; 
 int /*<<< orphan*/  FUNC30 (struct team_port*) ; 
 int /*<<< orphan*/  FUNC31 (struct team*,struct team_port*) ; 
 int FUNC32 (struct team_port*) ; 
 int FUNC33 (struct team*,struct team_port*) ; 
 int /*<<< orphan*/  FUNC34 (struct team*,struct team_port*) ; 
 int /*<<< orphan*/  FUNC35 (struct team_port*) ; 
 int FUNC36 (struct team*,struct team_port*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC37 (struct team*,struct team_port*) ; 
 scalar_t__ FUNC38 (struct net_device*) ; 
 int FUNC39 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC40 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC41(struct team *team, struct net_device *port_dev,
			 struct netlink_ext_ack *extack)
{
	struct net_device *dev = team->dev;
	struct team_port *port;
	char *portname = port_dev->name;
	int err;

	if (port_dev->flags & IFF_LOOPBACK) {
		FUNC1(extack, "Loopback device can't be added as a team port");
		FUNC20(dev, "Device %s is loopback device. Loopback devices can't be added as a team port\n",
			   portname);
		return -EINVAL;
	}

	if (FUNC27(port_dev)) {
		FUNC1(extack, "Device is already a port of a team device");
		FUNC20(dev, "Device %s is already a port "
				"of a team device\n", portname);
		return -EBUSY;
	}

	if (dev == port_dev) {
		FUNC1(extack, "Cannot enslave team device to itself");
		FUNC20(dev, "Cannot enslave team device to itself\n");
		return -EINVAL;
	}

	if (FUNC21(dev, port_dev)) {
		FUNC1(extack, "Device is already an upper device of the team interface");
		FUNC20(dev, "Device %s is already an upper device of the team interface\n",
			   portname);
		return -EBUSY;
	}

	if (port_dev->features & NETIF_F_VLAN_CHALLENGED &&
	    FUNC38(dev)) {
		FUNC1(extack, "Device is VLAN challenged and team device has VLAN set up");
		FUNC20(dev, "Device %s is VLAN challenged and team device has VLAN set up\n",
			   portname);
		return -EPERM;
	}

	err = FUNC29(dev, port_dev);
	if (err)
		return err;

	if (port_dev->flags & IFF_UP) {
		FUNC1(extack, "Device is up. Set it down before adding it as a team port");
		FUNC20(dev, "Device %s is up. Set it down before adding it as a team port\n",
			   portname);
		return -EBUSY;
	}

	port = FUNC16(sizeof(struct team_port) + team->mode->port_priv_size,
		       GFP_KERNEL);
	if (!port)
		return -ENOMEM;

	port->dev = port_dev;
	port->team = team;
	FUNC0(&port->qom_list);

	port->orig.mtu = port_dev->mtu;
	err = FUNC12(port_dev, dev->mtu);
	if (err) {
		FUNC19(dev, "Error %d calling dev_set_mtu\n", err);
		goto err_set_mtu;
	}

	FUNC18(port->orig.dev_addr, port_dev->dev_addr, port_dev->addr_len);

	err = FUNC33(team, port);
	if (err) {
		FUNC20(dev, "Device %s failed to enter team mode\n",
			   portname);
		goto err_port_enter;
	}

	err = FUNC10(port_dev, extack);
	if (err) {
		FUNC19(dev, "Device %s opening failed\n",
			   portname);
		goto err_dev_open;
	}

	err = FUNC39(port_dev, dev);
	if (err) {
		FUNC20(dev, "Failed to add vlan ids to device %s\n",
				portname);
		goto err_vids_add;
	}

	err = FUNC32(port);
	if (err) {
		FUNC20(dev, "Failed to enable netpoll on device %s\n",
			   portname);
		goto err_enable_netpoll;
	}

	if (!(dev->features & NETIF_F_LRO))
		FUNC8(port_dev);

	err = FUNC23(port_dev, team_handle_frame,
					 port);
	if (err) {
		FUNC20(dev, "Device %s failed to register rx_handler\n",
			   portname);
		goto err_handler_register;
	}

	err = FUNC36(team, port, extack);
	if (err) {
		FUNC20(dev, "Device %s failed to set upper link\n",
			   portname);
		goto err_set_upper_link;
	}

	err = FUNC3(team, port);
	if (err) {
		FUNC20(dev, "Device %s failed to add per-port options\n",
			   portname);
		goto err_option_port_add;
	}

	/* set promiscuity level to new slave */
	if (dev->flags & IFF_PROMISC) {
		err = FUNC13(port_dev, 1);
		if (err)
			goto err_set_slave_promisc;
	}

	/* set allmulti level to new slave */
	if (dev->flags & IFF_ALLMULTI) {
		err = FUNC11(port_dev, 1);
		if (err) {
			if (dev->flags & IFF_PROMISC)
				FUNC13(port_dev, -1);
			goto err_set_slave_promisc;
		}
	}

	FUNC25(dev);
	FUNC14(port_dev, dev);
	FUNC9(port_dev, dev);
	FUNC26(dev);

	port->index = -1;
	FUNC17(&port->list, &team->port_list);
	FUNC31(team, port);
	FUNC2(team);
	FUNC6(port, !!FUNC28(port_dev));
	FUNC5(team);

	FUNC22(dev, "Port device %s added\n", portname);

	return 0;

err_set_slave_promisc:
	FUNC4(team, port);

err_option_port_add:
	FUNC37(team, port);

err_set_upper_link:
	FUNC24(port_dev);

err_handler_register:
	FUNC30(port);

err_enable_netpoll:
	FUNC40(port_dev, dev);

err_vids_add:
	FUNC7(port_dev);

err_dev_open:
	FUNC34(team, port);
	FUNC35(port);

err_port_enter:
	FUNC12(port_dev, port->orig.mtu);

err_set_mtu:
	FUNC15(port);

	return err;
}
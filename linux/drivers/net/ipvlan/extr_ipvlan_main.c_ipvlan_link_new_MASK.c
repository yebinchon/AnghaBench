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
typedef  void* u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {scalar_t__ type; int flags; int dev_id; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  dev_addr; } ;
struct net {int dummy; } ;
struct ipvl_port {int dev_id_start; int /*<<< orphan*/  ida; int /*<<< orphan*/  ipvlans; void* flags; } ;
struct ipvl_dev {int /*<<< orphan*/  pnode; struct ipvl_port* port; int /*<<< orphan*/  addrs_lock; int /*<<< orphan*/  addrs; int /*<<< orphan*/  sfeatures; struct net_device* dev; struct net_device* phy_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  IFF_NO_RX_HANDLER ; 
 size_t IFLA_IPVLAN_FLAGS ; 
 size_t IFLA_IPVLAN_MODE ; 
 size_t IFLA_LINK ; 
 size_t IFLA_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPVLAN_FEATURES ; 
 void* IPVLAN_MODE_L3 ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ipvl_dev*,struct net_device*) ; 
 struct ipvl_port* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct ipvl_port*,void*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*) ; 
 scalar_t__ FUNC11 (struct net_device*) ; 
 struct ipvl_dev* FUNC12 (struct net_device*) ; 
 int FUNC13 (struct net_device*,struct net_device*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,struct net_device*) ; 
 scalar_t__ FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,struct net_device*) ; 
 void* FUNC18 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC19 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*) ; 

int FUNC24(struct net *src_net, struct net_device *dev,
		    struct nlattr *tb[], struct nlattr *data[],
		    struct netlink_ext_ack *extack)
{
	struct ipvl_dev *ipvlan = FUNC12(dev);
	struct ipvl_port *port;
	struct net_device *phy_dev;
	int err;
	u16 mode = IPVLAN_MODE_L3;

	if (!tb[IFLA_LINK])
		return -EINVAL;

	phy_dev = FUNC1(src_net, FUNC19(tb[IFLA_LINK]));
	if (!phy_dev)
		return -ENODEV;

	if (FUNC15(phy_dev)) {
		struct ipvl_dev *tmp = FUNC12(phy_dev);

		phy_dev = tmp->phy_dev;
		if (!FUNC20(FUNC2(phy_dev)->user_ns, CAP_NET_ADMIN))
			return -EPERM;
	} else if (!FUNC16(phy_dev)) {
		/* Exit early if the underlying link is invalid or busy */
		if (phy_dev->type != ARPHRD_ETHER ||
		    phy_dev->flags & IFF_LOOPBACK) {
			FUNC10(phy_dev,
				   "Master is either lo or non-ether device\n");
			return -EINVAL;
		}

		if (FUNC11(phy_dev)) {
			FUNC10(phy_dev, "Device is already in use.\n");
			return -EBUSY;
		}
	}

	ipvlan->phy_dev = phy_dev;
	ipvlan->dev = dev;
	ipvlan->sfeatures = IPVLAN_FEATURES;
	if (!tb[IFLA_MTU])
		FUNC5(ipvlan, phy_dev);
	FUNC0(&ipvlan->addrs);
	FUNC22(&ipvlan->addrs_lock);

	/* TODO Probably put random address here to be presented to the
	 * world but keep using the physical-dev address for the outgoing
	 * packets.
	 */
	FUNC9(dev->dev_addr, phy_dev->dev_addr, ETH_ALEN);

	dev->priv_flags |= IFF_NO_RX_HANDLER;

	err = FUNC21(dev);
	if (err < 0)
		return err;

	/* ipvlan_init() would have created the port, if required */
	port = FUNC6(phy_dev);
	ipvlan->port = port;

	/* If the port-id base is at the MAX value, then wrap it around and
	 * begin from 0x1 again. This may be due to a busy system where lots
	 * of slaves are getting created and deleted.
	 */
	if (port->dev_id_start == 0xFFFE)
		port->dev_id_start = 0x1;

	/* Since L2 address is shared among all IPvlan slaves including
	 * master, use unique 16 bit dev-ids to diffentiate among them.
	 * Assign IDs between 0x1 and 0xFFFE (used by the master) to each
	 * slave link [see addrconf_ifid_eui48()].
	 */
	err = FUNC3(&port->ida, port->dev_id_start, 0xFFFE,
			     GFP_KERNEL);
	if (err < 0)
		err = FUNC3(&port->ida, 0x1, port->dev_id_start,
				     GFP_KERNEL);
	if (err < 0)
		goto unregister_netdev;
	dev->dev_id = err;

	/* Increment id-base to the next slot for the future assignment */
	port->dev_id_start = err + 1;

	err = FUNC13(phy_dev, dev, extack);
	if (err)
		goto remove_ida;

	/* Flags are per port and latest update overrides. User has
	 * to be consistent in setting it just like the mode attribute.
	 */
	if (data && data[IFLA_IPVLAN_FLAGS])
		port->flags = FUNC18(data[IFLA_IPVLAN_FLAGS]);

	if (data && data[IFLA_IPVLAN_MODE])
		mode = FUNC18(data[IFLA_IPVLAN_MODE]);

	err = FUNC7(port, mode, extack);
	if (err)
		goto unlink_netdev;

	FUNC8(&ipvlan->pnode, &port->ipvlans);
	FUNC17(phy_dev, dev);
	return 0;

unlink_netdev:
	FUNC14(phy_dev, dev);
remove_ida:
	FUNC4(&port->ida, dev->dev_id);
unregister_netdev:
	FUNC23(dev);
	return err;
}
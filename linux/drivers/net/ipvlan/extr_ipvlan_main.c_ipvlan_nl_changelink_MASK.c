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
typedef  int u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ipvl_port {int dummy; } ;
struct ipvl_dev {int /*<<< orphan*/  phy_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EPERM ; 
 size_t IFLA_IPVLAN_FLAGS ; 
 size_t IFLA_IPVLAN_MODE ; 
 int IPVLAN_F_PRIVATE ; 
 int IPVLAN_F_VEPA ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipvl_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipvl_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipvl_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipvl_port*) ; 
 struct ipvl_port* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ipvl_port*,int,struct netlink_ext_ack*) ; 
 struct ipvl_dev* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev,
				struct nlattr *tb[], struct nlattr *data[],
				struct netlink_ext_ack *extack)
{
	struct ipvl_dev *ipvlan = FUNC7(dev);
	struct ipvl_port *port = FUNC5(ipvlan->phy_dev);
	int err = 0;

	if (!data)
		return 0;
	if (!FUNC9(FUNC0(ipvlan->phy_dev)->user_ns, CAP_NET_ADMIN))
		return -EPERM;

	if (data[IFLA_IPVLAN_MODE]) {
		u16 nmode = FUNC8(data[IFLA_IPVLAN_MODE]);

		err = FUNC6(port, nmode, extack);
	}

	if (!err && data[IFLA_IPVLAN_FLAGS]) {
		u16 flags = FUNC8(data[IFLA_IPVLAN_FLAGS]);

		if (flags & IPVLAN_F_PRIVATE)
			FUNC3(port);
		else
			FUNC1(port);

		if (flags & IPVLAN_F_VEPA)
			FUNC4(port);
		else
			FUNC2(port);
	}

	return err;
}
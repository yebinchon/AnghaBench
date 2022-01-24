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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct bonding {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*) ; 
 struct bonding* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net *src_net, struct net_device *bond_dev,
			struct nlattr *tb[], struct nlattr *data[],
			struct netlink_ext_ack *extack)
{
	int err;

	err = FUNC0(bond_dev, tb, data, extack);
	if (err < 0)
		return err;

	err = FUNC4(bond_dev);

	FUNC3(bond_dev);
	if (!err) {
		struct bonding *bond = FUNC2(bond_dev);

		FUNC1(bond);
	}

	return err;
}
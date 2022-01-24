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
struct net_vrf {scalar_t__ tb_id; } ;
struct net_device {int /*<<< orphan*/  priv_flags; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IFF_L3MDEV_MASTER ; 
 size_t IFLA_VRF_TABLE ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,struct nlattr*,char*) ; 
 scalar_t__ RT_TABLE_UNSPEC ; 
 struct net* FUNC2 (struct net_device*) ; 
 int* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 struct net_vrf* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct nlattr*) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  vrf_net_id ; 

__attribute__((used)) static int FUNC9(struct net *src_net, struct net_device *dev,
		       struct nlattr *tb[], struct nlattr *data[],
		       struct netlink_ext_ack *extack)
{
	struct net_vrf *vrf = FUNC4(dev);
	bool *add_fib_rules;
	struct net *net;
	int err;

	if (!data || !data[IFLA_VRF_TABLE]) {
		FUNC0(extack, "VRF table id is missing");
		return -EINVAL;
	}

	vrf->tb_id = FUNC5(data[IFLA_VRF_TABLE]);
	if (vrf->tb_id == RT_TABLE_UNSPEC) {
		FUNC1(extack, data[IFLA_VRF_TABLE],
				    "Invalid VRF table id");
		return -EINVAL;
	}

	dev->priv_flags |= IFF_L3MDEV_MASTER;

	err = FUNC6(dev);
	if (err)
		goto out;

	net = FUNC2(dev);
	add_fib_rules = FUNC3(net, vrf_net_id);
	if (*add_fib_rules) {
		err = FUNC8(dev);
		if (err) {
			FUNC7(dev);
			goto out;
		}
		*add_fib_rules = false;
	}

out:
	return err;
}
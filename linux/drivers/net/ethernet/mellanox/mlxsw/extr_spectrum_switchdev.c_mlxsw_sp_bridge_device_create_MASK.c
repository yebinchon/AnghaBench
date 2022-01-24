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
struct net_device {int dummy; } ;
struct mlxsw_sp_bridge_device {int vlan_enabled; int /*<<< orphan*/  list; int /*<<< orphan*/  mids_list; int /*<<< orphan*/  ops; int /*<<< orphan*/  ports_list; int /*<<< orphan*/  mrouter; int /*<<< orphan*/  multicast_enabled; struct net_device* dev; } ;
struct mlxsw_sp_bridge {int vlan_enabled_exists; int /*<<< orphan*/  bridges_list; int /*<<< orphan*/  bridge_8021d_ops; int /*<<< orphan*/  bridge_8021q_ops; TYPE_2__* mlxsw_sp; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bus_info; } ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mlxsw_sp_bridge_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct mlxsw_sp_bridge_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlxsw_sp_bridge_device *
FUNC8(struct mlxsw_sp_bridge *bridge,
			      struct net_device *br_dev)
{
	struct device *dev = bridge->mlxsw_sp->bus_info->dev;
	struct mlxsw_sp_bridge_device *bridge_device;
	bool vlan_enabled = FUNC4(br_dev);

	if (vlan_enabled && bridge->vlan_enabled_exists) {
		FUNC5(dev, "Only one VLAN-aware bridge is supported\n");
		return FUNC0(-EINVAL);
	}

	bridge_device = FUNC6(sizeof(*bridge_device), GFP_KERNEL);
	if (!bridge_device)
		return FUNC0(-ENOMEM);

	bridge_device->dev = br_dev;
	bridge_device->vlan_enabled = vlan_enabled;
	bridge_device->multicast_enabled = FUNC2(br_dev);
	bridge_device->mrouter = FUNC3(br_dev);
	FUNC1(&bridge_device->ports_list);
	if (vlan_enabled) {
		bridge->vlan_enabled_exists = true;
		bridge_device->ops = bridge->bridge_8021q_ops;
	} else {
		bridge_device->ops = bridge->bridge_8021d_ops;
	}
	FUNC1(&bridge_device->mids_list);
	FUNC7(&bridge_device->list, &bridge->bridges_list);

	return bridge_device;
}
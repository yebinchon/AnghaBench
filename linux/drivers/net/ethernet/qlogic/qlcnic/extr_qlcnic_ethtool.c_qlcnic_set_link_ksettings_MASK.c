#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {TYPE_3__* netdev_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  autoneg; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_6__ {int (* ndo_open ) (struct net_device*) ;int /*<<< orphan*/  (* ndo_stop ) (struct net_device*) ;} ;
struct TYPE_4__ {scalar_t__ port_type; int /*<<< orphan*/  link_autoneg; int /*<<< orphan*/  link_duplex; int /*<<< orphan*/  link_speed; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ QLCNIC_GBE ; 
 struct qlcnic_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*,struct ethtool_link_ksettings const*) ; 
 int FUNC5 (struct qlcnic_adapter*,struct ethtool_link_ksettings const*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
				     const struct ethtool_link_ksettings *ecmd)
{
	u32 ret = 0;
	struct qlcnic_adapter *adapter = FUNC0(dev);

	if (FUNC2(adapter))
		FUNC3(adapter);

	if (adapter->ahw->port_type != QLCNIC_GBE)
		return -EOPNOTSUPP;

	if (FUNC2(adapter))
		ret = FUNC4(adapter, ecmd);
	else
		ret = FUNC5(adapter, ecmd);

	if (!ret)
		return ret;

	adapter->ahw->link_speed = ecmd->base.speed;
	adapter->ahw->link_duplex = ecmd->base.duplex;
	adapter->ahw->link_autoneg = ecmd->base.autoneg;

	if (!FUNC1(dev))
		return 0;

	dev->netdev_ops->ndo_stop(dev);
	return dev->netdev_ops->ndo_open(dev);
}
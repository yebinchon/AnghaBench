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
typedef  int /*<<< orphan*/  u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct net_device*,unsigned long,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct mlxsw_sp*,struct net_device*,unsigned long,struct netlink_ext_ack*) ; 
 int FUNC3 (struct net_device*,struct net_device*,unsigned long,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 struct net_device* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct mlxsw_sp *mlxsw_sp,
					struct net_device *vlan_dev,
					unsigned long event,
					struct netlink_ext_ack *extack)
{
	struct net_device *real_dev = FUNC8(vlan_dev);
	u16 vid = FUNC9(vlan_dev);

	if (FUNC6(vlan_dev))
		return 0;

	if (FUNC4(real_dev))
		return FUNC3(vlan_dev, real_dev,
							 event, vid, extack);
	else if (FUNC7(real_dev))
		return FUNC0(vlan_dev, real_dev, event,
						     vid, extack);
	else if (FUNC5(real_dev) && FUNC1(real_dev))
		return FUNC2(mlxsw_sp, vlan_dev, event,
						      extack);

	return 0;
}
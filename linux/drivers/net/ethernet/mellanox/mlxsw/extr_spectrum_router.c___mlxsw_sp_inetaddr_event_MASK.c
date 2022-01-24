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
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int FUNC1 (struct mlxsw_sp*,struct net_device*,unsigned long,struct netlink_ext_ack*) ; 
 int FUNC2 (struct net_device*,unsigned long,struct netlink_ext_ack*) ; 
 int FUNC3 (struct mlxsw_sp*,struct net_device*,unsigned long,struct netlink_ext_ack*) ; 
 int FUNC4 (struct net_device*,unsigned long,struct netlink_ext_ack*) ; 
 int FUNC5 (struct mlxsw_sp*,struct net_device*,unsigned long,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct mlxsw_sp *mlxsw_sp,
				     struct net_device *dev,
				     unsigned long event,
				     struct netlink_ext_ack *extack)
{
	if (FUNC6(dev))
		return FUNC4(dev, event, extack);
	else if (FUNC8(dev))
		return FUNC2(dev, event, extack);
	else if (FUNC7(dev))
		return FUNC1(mlxsw_sp, dev, event,
						      extack);
	else if (FUNC0(dev))
		return FUNC5(mlxsw_sp, dev, event,
						    extack);
	else if (FUNC9(dev))
		return FUNC3(mlxsw_sp, dev, event,
						       extack);
	else
		return 0;
}
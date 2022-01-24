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
#define  NETDEV_DOWN 129 
#define  NETDEV_UP 128 
 int FUNC0 (struct mlxsw_sp*,struct net_device*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct mlxsw_sp *mlxsw_sp,
					   struct net_device *macvlan_dev,
					   unsigned long event,
					   struct netlink_ext_ack *extack)
{
	switch (event) {
	case NETDEV_UP:
		return FUNC0(mlxsw_sp, macvlan_dev, extack);
	case NETDEV_DOWN:
		FUNC1(mlxsw_sp, macvlan_dev);
		break;
	}

	return 0;
}
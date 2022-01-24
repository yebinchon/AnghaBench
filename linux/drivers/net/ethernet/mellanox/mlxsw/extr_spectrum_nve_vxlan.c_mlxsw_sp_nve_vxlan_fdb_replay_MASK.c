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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  mlxsw_sp_switchdev_notifier ; 
 int /*<<< orphan*/  FUNC1 (struct net_device const*) ; 
 int FUNC2 (struct net_device const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 

__attribute__((used)) static int
FUNC3(const struct net_device *nve_dev, __be32 vni,
			      struct netlink_ext_ack *extack)
{
	if (FUNC0(!FUNC1(nve_dev)))
		return -EINVAL;
	return FUNC2(nve_dev, vni, &mlxsw_sp_switchdev_notifier,
				extack);
}
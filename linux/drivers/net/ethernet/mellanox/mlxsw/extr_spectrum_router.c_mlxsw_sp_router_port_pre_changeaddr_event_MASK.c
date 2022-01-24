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
struct netdev_notifier_pre_changeaddr_info {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  info; } ;
struct mlxsw_sp_rif {int /*<<< orphan*/  dev; int /*<<< orphan*/  mlxsw_sp; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct netlink_ext_ack* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mlxsw_sp_rif *rif,
			    struct netdev_notifier_pre_changeaddr_info *info)
{
	struct netlink_ext_ack *extack;

	extack = FUNC1(&info->info);
	return FUNC0(rif->mlxsw_sp, rif->dev,
						   info->dev_addr, extack);
}
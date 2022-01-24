#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_4__ {TYPE_2__* eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct devlink {int dummy; } ;
struct TYPE_5__ {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ DEVLINK_ESWITCH_MODE_LEGACY ; 
 scalar_t__ DEVLINK_ESWITCH_MODE_SWITCHDEV ; 
 int EINVAL ; 
 struct mlx5_core_dev* FUNC0 (struct devlink*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__*) ; 
 int FUNC2 (TYPE_2__*,struct netlink_ext_ack*) ; 
 int FUNC3 (TYPE_2__*,struct netlink_ext_ack*) ; 
 int FUNC4 (struct devlink*) ; 

int FUNC5(struct devlink *devlink, u16 mode,
				  struct netlink_ext_ack *extack)
{
	struct mlx5_core_dev *dev = FUNC0(devlink);
	u16 cur_mlx5_mode, mlx5_mode = 0;
	int err;

	err = FUNC4(devlink);
	if (err)
		return err;

	cur_mlx5_mode = dev->priv.eswitch->mode;

	if (FUNC1(mode, &mlx5_mode))
		return -EINVAL;

	if (cur_mlx5_mode == mlx5_mode)
		return 0;

	if (mode == DEVLINK_ESWITCH_MODE_SWITCHDEV)
		return FUNC2(dev->priv.eswitch, extack);
	else if (mode == DEVLINK_ESWITCH_MODE_LEGACY)
		return FUNC3(dev->priv.eswitch, extack);
	else
		return -EINVAL;
}
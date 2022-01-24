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
union devlink_param_value {int /*<<< orphan*/  vstr; } ;
struct TYPE_4__ {TYPE_1__* steering; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct devlink {int dummy; } ;
struct TYPE_3__ {scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_DEVLINK_PARAM_FLOW_STEERING_MODE ; 
 scalar_t__ MLX5_FLOW_STEERING_MODE_DMFS ; 
 int /*<<< orphan*/  FUNC0 (struct devlink*,int /*<<< orphan*/ ,union devlink_param_value) ; 
 struct mlx5_core_dev* FUNC1 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct devlink *devlink)
{
	struct mlx5_core_dev *dev = FUNC1(devlink);
	union devlink_param_value value;

	if (dev->priv.steering->mode == MLX5_FLOW_STEERING_MODE_DMFS)
		FUNC2(value.vstr, "dmfs");
	else
		FUNC2(value.vstr, "smfs");
	FUNC0(devlink,
					   MLX5_DEVLINK_PARAM_FLOW_STEERING_MODE,
					   value);
}
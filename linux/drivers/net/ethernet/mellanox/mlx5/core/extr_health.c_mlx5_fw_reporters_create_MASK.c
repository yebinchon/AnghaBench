#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx5_core_health {void* fw_fatal_reporter; void* fw_reporter; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MLX5_REPORTER_FW_GRACEFUL_PERIOD ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (struct devlink*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx5_fw_fatal_reporter_ops ; 
 int /*<<< orphan*/  mlx5_fw_reporter_ops ; 
 struct devlink* FUNC4 (struct mlx5_core_dev*) ; 

__attribute__((used)) static void FUNC5(struct mlx5_core_dev *dev)
{
	struct mlx5_core_health *health = &dev->priv.health;
	struct devlink *devlink = FUNC4(dev);

	health->fw_reporter =
		FUNC2(devlink, &mlx5_fw_reporter_ops,
					       0, false, dev);
	if (FUNC0(health->fw_reporter))
		FUNC3(dev, "Failed to create fw reporter, err = %ld\n",
			       FUNC1(health->fw_reporter));

	health->fw_fatal_reporter =
		FUNC2(devlink,
					       &mlx5_fw_fatal_reporter_ops,
					       MLX5_REPORTER_FW_GRACEFUL_PERIOD,
					       true, dev);
	if (FUNC0(health->fw_fatal_reporter))
		FUNC3(dev, "Failed to create fw fatal reporter, err = %ld\n",
			       FUNC1(health->fw_fatal_reporter));
}
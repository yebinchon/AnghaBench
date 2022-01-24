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
struct devlink {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*) ; 
 int FUNC2 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct devlink*,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct devlink*) ; 
 int /*<<< orphan*/  mlx5_devlink_params ; 
 int /*<<< orphan*/  FUNC5 (struct devlink*) ; 

int FUNC6(struct devlink *devlink, struct device *dev)
{
	int err;

	err = FUNC3(devlink, dev);
	if (err)
		return err;

	err = FUNC2(devlink, mlx5_devlink_params,
				      FUNC0(mlx5_devlink_params));
	if (err)
		goto params_reg_err;
	FUNC5(devlink);
	FUNC1(devlink);
	return 0;

params_reg_err:
	FUNC4(devlink);
	return err;
}
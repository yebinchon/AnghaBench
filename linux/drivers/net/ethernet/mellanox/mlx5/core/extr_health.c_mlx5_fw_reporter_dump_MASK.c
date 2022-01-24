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
struct mlx5_fw_reporter_ctx {int dummy; } ;
struct mlx5_core_dev {int /*<<< orphan*/  tracer; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink_fmsg {int dummy; } ;

/* Variables and functions */
 struct mlx5_core_dev* FUNC0 (struct devlink_health_reporter*) ; 
 int FUNC1 (struct devlink_fmsg*,struct mlx5_fw_reporter_ctx*) ; 
 int FUNC2 (struct mlx5_core_dev*,struct devlink_fmsg*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct devlink_fmsg*) ; 
 int FUNC4 (struct mlx5_core_dev*) ; 

__attribute__((used)) static int
FUNC5(struct devlink_health_reporter *reporter,
		      struct devlink_fmsg *fmsg, void *priv_ctx)
{
	struct mlx5_core_dev *dev = FUNC0(reporter);
	int err;

	err = FUNC4(dev);
	if (err)
		return err;

	if (priv_ctx) {
		struct mlx5_fw_reporter_ctx *fw_reporter_ctx = priv_ctx;

		err = FUNC1(fmsg, fw_reporter_ctx);
		if (err)
			return err;
	}

	err = FUNC2(dev, fmsg);
	if (err)
		return err;
	return FUNC3(dev->tracer, fmsg);
}
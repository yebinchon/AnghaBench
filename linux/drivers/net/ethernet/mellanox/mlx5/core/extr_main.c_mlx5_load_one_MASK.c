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
struct TYPE_2__ {int /*<<< orphan*/  embedded_cpu; } ;
struct mlx5_core_dev {int /*<<< orphan*/  intf_state_mutex; int /*<<< orphan*/  state; int /*<<< orphan*/  intf_state; TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  MLX5_DEVICE_STATE_UP ; 
 int /*<<< orphan*/  MLX5_INTERFACE_STATE_UP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*) ; 
 scalar_t__ FUNC4 (struct mlx5_core_dev*) ; 
 int FUNC5 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,int) ; 
 int FUNC7 (struct mlx5_core_dev*) ; 
 int FUNC8 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*) ; 
 int FUNC10 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct mlx5_core_dev *dev, bool boot)
{
	int err = 0;

	dev->caps.embedded_cpu = FUNC9(dev);
	FUNC12(&dev->intf_state_mutex);
	if (FUNC15(MLX5_INTERFACE_STATE_UP, &dev->intf_state)) {
		FUNC3(dev, "interface is up, NOP\n");
		goto out;
	}
	/* remove any previous indication of internal error */
	dev->state = MLX5_DEVICE_STATE_UP;

	err = FUNC5(dev, boot);
	if (err)
		goto out;

	if (boot) {
		err = FUNC7(dev);
		if (err) {
			FUNC2(dev, "sw objs init failed\n");
			goto function_teardown;
		}
	}

	err = FUNC8(dev);
	if (err)
		goto err_load;

	if (FUNC4(dev)) {
		FUNC0(dev);
	} else {
		err = FUNC10(dev);
		if (err) {
			FUNC2(dev, "register device failed %d\n", err);
			goto err_reg_dev;
		}
	}

	FUNC14(MLX5_INTERFACE_STATE_UP, &dev->intf_state);
out:
	FUNC13(&dev->intf_state_mutex);

	return err;

err_reg_dev:
	FUNC11(dev);
err_load:
	if (boot)
		FUNC1(dev);
function_teardown:
	FUNC6(dev, boot);
	dev->state = MLX5_DEVICE_STATE_INTERNAL_ERROR;
	FUNC13(&dev->intf_state_mutex);

	return err;
}
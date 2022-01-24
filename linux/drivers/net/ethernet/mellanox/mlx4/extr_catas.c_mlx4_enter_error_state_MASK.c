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
struct mlx4_dev_persistent {int state; int /*<<< orphan*/  device_state_mutex; struct mlx4_dev* dev; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_2__ {int state; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  MLX4_DEV_EVENT_CATASTROPHIC_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  mlx4_internal_err_reset ; 
 scalar_t__ FUNC5 (struct mlx4_dev*) ; 
 int FUNC6 (struct mlx4_dev*) ; 
 int FUNC7 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct mlx4_dev_persistent *persist)
{
	int err;
	struct mlx4_dev *dev;

	if (!mlx4_internal_err_reset)
		return;

	FUNC8(&persist->device_state_mutex);
	if (persist->state & MLX4_DEVICE_STATE_INTERNAL_ERROR)
		goto out;

	dev = persist->dev;
	FUNC4(dev, "device is going to be reset\n");
	if (FUNC5(dev)) {
		err = FUNC7(dev);
	} else {
		FUNC2(dev);
		err = FUNC6(dev);
	}

	if (!err) {
		FUNC4(dev, "device was reset successfully\n");
	} else {
		/* EEH could have disabled the PCI channel during reset. That's
		 * recoverable and the PCI error flow will handle it.
		 */
		if (!FUNC10(dev->persist->pdev))
			FUNC0(1);
	}
	dev->persist->state |= MLX4_DEVICE_STATE_INTERNAL_ERROR;
	FUNC9(&persist->device_state_mutex);

	/* At that step HW was already reset, now notify clients */
	FUNC3(dev, MLX4_DEV_EVENT_CATASTROPHIC_ERROR, 0);
	FUNC1(dev);
	return;

out:
	FUNC9(&persist->device_state_mutex);
}
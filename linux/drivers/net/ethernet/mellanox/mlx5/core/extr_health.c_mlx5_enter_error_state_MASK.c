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
struct TYPE_2__ {int /*<<< orphan*/  events; } ;
struct mlx5_core_dev {scalar_t__ state; int /*<<< orphan*/  intf_state_mutex; TYPE_1__ priv; } ;

/* Variables and functions */
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ; 
 scalar_t__ MLX5_DEVICE_STATE_UNINITIALIZED ; 
 int /*<<< orphan*/  MLX5_DEV_EVENT_SYS_ERROR ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5_core_dev *dev, bool force)
{
	FUNC3(&dev->intf_state_mutex);
	if (dev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR)
		goto unlock;
	if (dev->state == MLX5_DEVICE_STATE_UNINITIALIZED) {
		dev->state = MLX5_DEVICE_STATE_INTERNAL_ERROR;
		goto unlock;
	}

	if (FUNC0(dev) || force) {
		dev->state = MLX5_DEVICE_STATE_INTERNAL_ERROR;
		FUNC1(dev);
	}

	FUNC2(dev->priv.events, MLX5_DEV_EVENT_SYS_ERROR, (void *)1);
unlock:
	FUNC4(&dev->intf_state_mutex);
}
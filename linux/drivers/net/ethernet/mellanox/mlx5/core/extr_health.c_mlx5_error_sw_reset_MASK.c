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
struct mlx5_core_dev {scalar_t__ state; int /*<<< orphan*/  intf_state_mutex; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned long MLX5_CRDUMP_WAIT_MS ; 
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ; 
 unsigned long MLX5_FW_RESET_WAIT_MS ; 
 scalar_t__ MLX5_NIC_IFC_DISABLED ; 
 scalar_t__ MLX5_SENSOR_FW_SYND_RFR ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,unsigned long) ; 
 unsigned long jiffies ; 
 int FUNC3 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*) ; 
 scalar_t__ FUNC5 (struct mlx5_core_dev*) ; 
 unsigned long FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,unsigned long) ; 

void FUNC11(struct mlx5_core_dev *dev)
{
	unsigned long end, delay_ms = MLX5_FW_RESET_WAIT_MS;
	int lock = -EBUSY;

	FUNC7(&dev->intf_state_mutex);
	if (dev->state != MLX5_DEVICE_STATE_INTERNAL_ERROR)
		goto unlock;

	FUNC4(dev, "start\n");

	if (FUNC0(dev) == MLX5_SENSOR_FW_SYND_RFR) {
		/* Get cr-dump and reset FW semaphore */
		lock = FUNC3(dev, true);

		if (lock == -EBUSY) {
			delay_ms = MLX5_CRDUMP_WAIT_MS;
			goto recover_from_sw_reset;
		}
		/* Execute SW reset */
		FUNC9(dev);
	}

recover_from_sw_reset:
	/* Recover from SW reset */
	end = jiffies + FUNC6(delay_ms);
	do {
		if (FUNC5(dev) == MLX5_NIC_IFC_DISABLED)
			break;

		FUNC1();
	} while (!FUNC10(jiffies, end));

	if (FUNC5(dev) != MLX5_NIC_IFC_DISABLED) {
		FUNC2(&dev->pdev->dev, "NIC IFC still %d after %lums.\n",
			FUNC5(dev), delay_ms);
	}

	/* Release FW semaphore if you are the lock owner */
	if (!lock)
		FUNC3(dev, false);

	FUNC4(dev, "end\n");

unlock:
	FUNC8(&dev->intf_state_mutex);
}
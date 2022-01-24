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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MLX5_SEMAPHORE_SW_RESET ; 
 int /*<<< orphan*/  MLX5_VSC_LOCK ; 
 int /*<<< orphan*/  MLX5_VSC_SPACE_SCAN_CRSPACE ; 
 int /*<<< orphan*/  MLX5_VSC_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5_core_dev*) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 int FUNC6 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct mlx5_core_dev *dev, u32 *cr_data)
{
	int ret;

	if (!FUNC1(dev))
		return -ENODEV;

	ret = FUNC3(dev);
	if (ret) {
		FUNC0(dev, "crdump: failed to lock vsc gw err %d\n",
			       ret);
		return ret;
	}
	/* Verify no other PF is running cr-dump or sw reset */
	ret = FUNC6(dev, MLX5_SEMAPHORE_SW_RESET,
				     MLX5_VSC_LOCK);
	if (ret) {
		FUNC0(dev, "Failed to lock SW reset semaphore\n");
		goto unlock_gw;
	}

	ret = FUNC4(dev, MLX5_VSC_SPACE_SCAN_CRSPACE, NULL);
	if (ret)
		goto unlock_sem;

	ret = FUNC2(dev, cr_data);

unlock_sem:
	FUNC6(dev, MLX5_SEMAPHORE_SW_RESET, MLX5_VSC_UNLOCK);
unlock_gw:
	FUNC5(dev);
	return ret;
}
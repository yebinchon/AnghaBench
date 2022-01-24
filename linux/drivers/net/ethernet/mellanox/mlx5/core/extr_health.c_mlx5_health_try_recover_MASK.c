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
struct mlx5_core_dev {int /*<<< orphan*/  intf_state; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MLX5_INTERFACE_STATE_UP ; 
 int /*<<< orphan*/  MLX5_RECOVERY_WAIT_MSECS ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct mlx5_core_dev *dev)
{
	unsigned long end;

	FUNC2(dev, "handling bad device here\n");
	FUNC3(dev);
	end = jiffies + FUNC5(MLX5_RECOVERY_WAIT_MSECS);
	while (FUNC7(dev)) {
		if (FUNC9(jiffies, end)) {
			FUNC1(dev,
				      "health recovery flow aborted, PCI reads still not working\n");
			return -EIO;
		}
		FUNC6(100);
	}

	FUNC1(dev, "starting health recovery flow\n");
	FUNC4(dev);
	if (!FUNC8(MLX5_INTERFACE_STATE_UP, &dev->intf_state) ||
	    FUNC0(dev)) {
		FUNC1(dev, "health recovery failed\n");
		return -EIO;
	}
	return 0;
}
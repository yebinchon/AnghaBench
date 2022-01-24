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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 
 int FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int FUNC5 (struct mlx5_core_dev*) ; 

void FUNC6(struct mlx5_core_dev *dev)
{
	int err;

	err = FUNC2(dev);
	if (err) {
		FUNC0(dev, "Failed to enable RoCE: %d\n", err);
		return;
	}

	err = FUNC3(dev);
	if (err) {
		FUNC0(dev, "Failed to add RoCE address: %d\n", err);
		goto disable_roce;
	}

	err = FUNC5(dev);
	if (err) {
		FUNC0(dev, "Failed to enable RoCE steering: %d\n", err);
		goto del_roce_addr;
	}

	return;

del_roce_addr:
	FUNC4(dev);
disable_roce:
	FUNC1(dev);
	return;
}
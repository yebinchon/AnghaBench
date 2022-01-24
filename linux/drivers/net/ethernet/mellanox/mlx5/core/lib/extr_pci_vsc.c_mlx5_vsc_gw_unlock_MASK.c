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
struct mlx5_core_dev {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_VSC_UNLOCK ; 
 int /*<<< orphan*/  VSC_SEMAPHORE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct mlx5_core_dev *dev)
{
	int ret;

	ret = FUNC1(dev, VSC_SEMAPHORE_OFFSET, MLX5_VSC_UNLOCK);
	FUNC0(dev->pdev);
	return ret;
}
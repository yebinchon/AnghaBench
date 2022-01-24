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
typedef  int u64 ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_SET_ICM_SIZE ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int MLX4_ICM_PAGE_SHIFT ; 
 int MLX4_ICM_PAGE_SIZE ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct mlx4_dev*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct mlx4_dev *dev, u64 icm_size, u64 *aux_pages)
{
	int ret = FUNC1(dev, icm_size, aux_pages, 0, 0,
			       MLX4_CMD_SET_ICM_SIZE,
			       MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
	if (ret)
		return ret;

	/*
	 * Round up number of system pages needed in case
	 * MLX4_ICM_PAGE_SIZE < PAGE_SIZE.
	 */
	*aux_pages = FUNC0(*aux_pages, PAGE_SIZE / MLX4_ICM_PAGE_SIZE) >>
		(PAGE_SHIFT - MLX4_ICM_PAGE_SHIFT);

	return 0;
}
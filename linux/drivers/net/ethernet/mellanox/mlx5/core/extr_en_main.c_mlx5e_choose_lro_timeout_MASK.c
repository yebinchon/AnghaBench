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
typedef  scalar_t__ u32 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int MLX5E_LRO_TIMEOUT_ARR_SIZE ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lro_timer_supported_periods ; 

__attribute__((used)) static u32 FUNC1(struct mlx5_core_dev *mdev, u32 wanted_timeout)
{
	int i;

	/* The supported periods are organized in ascending order */
	for (i = 0; i < MLX5E_LRO_TIMEOUT_ARR_SIZE - 1; i++)
		if (FUNC0(mdev, lro_timer_supported_periods[i]) >= wanted_timeout)
			break;

	return FUNC0(mdev, lro_timer_supported_periods[i]);
}
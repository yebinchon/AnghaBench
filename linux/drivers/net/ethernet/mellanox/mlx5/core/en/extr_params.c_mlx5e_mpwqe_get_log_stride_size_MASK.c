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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_params*,struct mlx5e_xsk_param*) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*,struct mlx5e_params*,struct mlx5e_xsk_param*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

u8 FUNC4(struct mlx5_core_dev *mdev,
				   struct mlx5e_params *params,
				   struct mlx5e_xsk_param *xsk)
{
	if (FUNC2(mdev, params, xsk))
		return FUNC3(FUNC1(params, xsk));

	return FUNC0(mdev);
}
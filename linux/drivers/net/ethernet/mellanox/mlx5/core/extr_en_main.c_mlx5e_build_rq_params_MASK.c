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
struct mlx5e_params {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_PFLAG_RX_STRIDING_RQ ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,struct mlx5e_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct mlx5_core_dev*,struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,struct mlx5e_params*) ; 
 scalar_t__ FUNC5 (struct mlx5_core_dev*,struct mlx5e_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 

void FUNC7(struct mlx5_core_dev *mdev,
			   struct mlx5e_params *params)
{
	/* Prefer Striding RQ, unless any of the following holds:
	 * - Striding RQ configuration is not possible/supported.
	 * - Slow PCI heuristic.
	 * - Legacy RQ would use linear SKB while Striding RQ would use non-linear.
	 *
	 * No XSK params: checking the availability of striding RQ in general.
	 */
	if (!FUNC6(mdev) &&
	    FUNC5(mdev, params) &&
	    (FUNC3(mdev, params, NULL) ||
	     !FUNC2(params, NULL)))
		FUNC0(params, MLX5E_PFLAG_RX_STRIDING_RQ, true);
	FUNC4(mdev, params);
	FUNC1(mdev, params);
}
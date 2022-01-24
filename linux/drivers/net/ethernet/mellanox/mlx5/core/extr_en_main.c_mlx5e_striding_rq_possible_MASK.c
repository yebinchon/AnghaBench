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
struct mlx5e_params {scalar_t__ xdp_prog; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,struct mlx5e_params*,int /*<<< orphan*/ *) ; 

bool FUNC3(struct mlx5_core_dev *mdev,
				struct mlx5e_params *params)
{
	if (!FUNC1(mdev))
		return false;

	if (FUNC0(mdev))
		return false;

	if (params->xdp_prog) {
		/* XSK params are not considered here. If striding RQ is in use,
		 * and an XSK is being opened, mlx5e_rx_mpwqe_is_linear_skb will
		 * be called with the known XSK params.
		 */
		if (!FUNC2(mdev, params, NULL))
			return false;
	}

	return true;
}
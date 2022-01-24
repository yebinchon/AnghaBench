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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5e_params {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct mlx5_core_dev *mdev,
			 struct mlx5e_params *params, u16 mtu)
{
	u16 hw_mtu = FUNC0(params, mtu);
	int err;

	err = FUNC2(mdev, hw_mtu, 1);
	if (err)
		return err;

	/* Update vport context MTU */
	FUNC1(mdev, hw_mtu);
	return 0;
}
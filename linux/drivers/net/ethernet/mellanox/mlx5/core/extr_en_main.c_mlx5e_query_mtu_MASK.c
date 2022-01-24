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
typedef  scalar_t__ u16 ;
struct mlx5e_params {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5e_params*,scalar_t__) ; 
 int FUNC1 (struct mlx5_core_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,scalar_t__*,int) ; 

__attribute__((used)) static void FUNC3(struct mlx5_core_dev *mdev,
			    struct mlx5e_params *params, u16 *mtu)
{
	u16 hw_mtu = 0;
	int err;

	err = FUNC1(mdev, &hw_mtu);
	if (err || !hw_mtu) /* fallback to port oper mtu */
		FUNC2(mdev, &hw_mtu, 1);

	*mtu = FUNC0(params, hw_mtu);
}
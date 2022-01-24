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
typedef  int /*<<< orphan*/  u64 ;
struct mlx5_core_dev {int /*<<< orphan*/  sys_image_guid; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX5_CAP_PORT_TYPE_ETH ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  port_type ; 

u64 FUNC3(struct mlx5_core_dev *mdev)
{
	int port_type_cap = FUNC0(mdev, port_type);
	u64 tmp = 0;

	if (mdev->sys_image_guid)
		return mdev->sys_image_guid;

	if (port_type_cap == MLX5_CAP_PORT_TYPE_ETH)
		FUNC2(mdev, &tmp);
	else
		FUNC1(mdev, &tmp);

	mdev->sys_image_guid = tmp;

	return tmp;
}
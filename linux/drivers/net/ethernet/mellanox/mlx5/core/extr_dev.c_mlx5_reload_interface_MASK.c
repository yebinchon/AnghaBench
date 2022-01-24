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
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  mlx5_intf_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5_core_dev *mdev, int protocol)
{
	FUNC3(&mlx5_intf_mutex);
	if (FUNC1(mdev, protocol)) {
		FUNC2(mdev, protocol);
		FUNC0(mdev, protocol);
	}
	FUNC4(&mlx5_intf_mutex);
}
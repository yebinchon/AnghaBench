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
typedef  int u32 ;
struct mlx5dr_domain {int /*<<< orphan*/  mdev; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int MLX5DR_DOMAIN_SYNC_FLAGS_HW ; 
 int MLX5DR_DOMAIN_SYNC_FLAGS_SW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5dr_domain*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mlx5dr_domain *dmn, u32 flags)
{
	int ret = 0;

	if (flags & MLX5DR_DOMAIN_SYNC_FLAGS_SW) {
		FUNC2(&dmn->mutex);
		ret = FUNC1(dmn);
		FUNC3(&dmn->mutex);
		if (ret)
			return ret;
	}

	if (flags & MLX5DR_DOMAIN_SYNC_FLAGS_HW)
		ret = FUNC0(dmn->mdev);

	return ret;
}
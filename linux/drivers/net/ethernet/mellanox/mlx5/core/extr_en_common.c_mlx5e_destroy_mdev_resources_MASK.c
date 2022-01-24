#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tdn; } ;
struct mlx5e_resources {int /*<<< orphan*/  pdn; TYPE_1__ td; int /*<<< orphan*/  mkey; int /*<<< orphan*/  bfreg; } ;
struct mlx5_core_dev {struct mlx5e_resources mlx5e_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_resources*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5_core_dev *mdev)
{
	struct mlx5e_resources *res = &mdev->mlx5e_res;

	FUNC4(mdev, &res->bfreg);
	FUNC3(mdev, &res->mkey);
	FUNC2(mdev, res->td.tdn);
	FUNC1(mdev, res->pdn);
	FUNC0(res, 0, sizeof(*res));
}
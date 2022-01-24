#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_tir {int /*<<< orphan*/  list; int /*<<< orphan*/  tirn; } ;
struct TYPE_3__ {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  tirs_list; } ;
struct TYPE_4__ {TYPE_1__ td; } ;
struct mlx5_core_dev {TYPE_2__ mlx5e_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mlx5_core_dev *mdev,
		     struct mlx5e_tir *tir, u32 *in, int inlen)
{
	int err;

	err = FUNC1(mdev, in, inlen, &tir->tirn);
	if (err)
		return err;

	FUNC2(&mdev->mlx5e_res.td.list_lock);
	FUNC0(&tir->list, &mdev->mlx5e_res.td.tirs_list);
	FUNC3(&mdev->mlx5e_res.td.list_lock);

	return 0;
}
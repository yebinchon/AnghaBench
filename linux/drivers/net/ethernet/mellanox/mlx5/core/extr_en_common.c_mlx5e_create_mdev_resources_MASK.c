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
struct TYPE_2__ {int /*<<< orphan*/  tdn; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  tirs_list; } ;
struct mlx5e_resources {int /*<<< orphan*/  pdn; TYPE_1__ td; int /*<<< orphan*/  mkey; int /*<<< orphan*/  bfreg; } ;
struct mlx5_core_dev {struct mlx5e_resources mlx5e_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC8 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct mlx5_core_dev *mdev)
{
	struct mlx5e_resources *res = &mdev->mlx5e_res;
	int err;

	err = FUNC2(mdev, &res->pdn);
	if (err) {
		FUNC7(mdev, "alloc pd failed, %d\n", err);
		return err;
	}

	err = FUNC3(mdev, &res->td.tdn);
	if (err) {
		FUNC7(mdev, "alloc td failed, %d\n", err);
		goto err_dealloc_pd;
	}

	err = FUNC8(mdev, res->pdn, &res->mkey);
	if (err) {
		FUNC7(mdev, "create mkey failed, %d\n", err);
		goto err_dealloc_transport_domain;
	}

	err = FUNC1(mdev, &res->bfreg, false, false);
	if (err) {
		FUNC7(mdev, "alloc bfreg failed, %d\n", err);
		goto err_destroy_mkey;
	}

	FUNC0(&mdev->mlx5e_res.td.tirs_list);
	FUNC9(&mdev->mlx5e_res.td.list_lock);

	return 0;

err_destroy_mkey:
	FUNC6(mdev, &res->mkey);
err_dealloc_transport_domain:
	FUNC5(mdev, res->td.tdn);
err_dealloc_pd:
	FUNC4(mdev, res->pdn);
	return err;
}
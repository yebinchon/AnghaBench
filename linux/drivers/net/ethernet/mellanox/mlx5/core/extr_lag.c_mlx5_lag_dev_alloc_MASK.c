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
struct mlx5_lag {int /*<<< orphan*/  bond_work; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_lag*) ; 
 struct mlx5_lag* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx5_do_bond_work ; 

__attribute__((used)) static struct mlx5_lag *FUNC4(void)
{
	struct mlx5_lag *ldev;

	ldev = FUNC3(sizeof(*ldev), GFP_KERNEL);
	if (!ldev)
		return NULL;

	ldev->wq = FUNC1("mlx5_lag");
	if (!ldev->wq) {
		FUNC2(ldev);
		return NULL;
	}

	FUNC0(&ldev->bond_work, mlx5_do_bond_work);

	return ldev;
}
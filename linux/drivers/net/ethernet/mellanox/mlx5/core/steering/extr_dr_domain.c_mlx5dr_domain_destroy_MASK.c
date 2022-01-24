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
struct mlx5dr_domain {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mdev; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5dr_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_domain*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct mlx5dr_domain *dmn)
{
	if (FUNC6(&dmn->refcount) > 1)
		return -EBUSY;

	/* make sure resources are not used by the hardware */
	FUNC4(dmn->mdev);
	FUNC1(dmn);
	FUNC2(dmn);
	FUNC0(dmn);
	FUNC5(&dmn->mutex);
	FUNC3(dmn);
	return 0;
}
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
struct mlx5dr_table {TYPE_2__* dmn; TYPE_1__* miss_action; int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_3__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct mlx5dr_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_table*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mlx5dr_table *tbl)
{
	int ret;

	if (FUNC4(&tbl->refcount) > 1)
		return -EBUSY;

	ret = FUNC0(tbl);
	if (ret)
		return ret;

	FUNC1(tbl);

	if (tbl->miss_action)
		FUNC3(&tbl->miss_action->refcount);

	FUNC3(&tbl->dmn->refcount);
	FUNC2(tbl);

	return ret;
}
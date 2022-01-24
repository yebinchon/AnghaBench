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
struct mlx5dr_table {TYPE_1__* dmn; int /*<<< orphan*/  refcount; } ;
struct mlx5dr_matcher {struct mlx5dr_table* tbl; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5dr_matcher*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_matcher*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_matcher*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct mlx5dr_matcher *matcher)
{
	struct mlx5dr_table *tbl = matcher->tbl;

	if (FUNC6(&matcher->refcount) > 1)
		return -EBUSY;

	FUNC3(&tbl->dmn->mutex);

	FUNC0(matcher);
	FUNC1(matcher);
	FUNC5(&matcher->tbl->refcount);

	FUNC4(&tbl->dmn->mutex);
	FUNC2(matcher);

	return 0;
}
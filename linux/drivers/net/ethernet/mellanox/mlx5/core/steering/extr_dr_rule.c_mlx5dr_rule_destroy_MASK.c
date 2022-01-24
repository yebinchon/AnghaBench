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
struct mlx5dr_table {TYPE_1__* dmn; } ;
struct mlx5dr_rule {struct mlx5dr_matcher* matcher; } ;
struct mlx5dr_matcher {int /*<<< orphan*/  refcount; struct mlx5dr_table* tbl; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5dr_rule*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mlx5dr_rule *rule)
{
	struct mlx5dr_matcher *matcher = rule->matcher;
	struct mlx5dr_table *tbl = rule->matcher->tbl;
	int ret;

	FUNC1(&tbl->dmn->mutex);

	ret = FUNC0(rule);

	FUNC2(&tbl->dmn->mutex);

	if (!ret)
		FUNC3(&matcher->refcount);
	return ret;
}
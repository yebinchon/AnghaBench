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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5dr_table {int /*<<< orphan*/  refcount; TYPE_1__* dmn; } ;
struct mlx5dr_matcher {int /*<<< orphan*/  matcher_list; int /*<<< orphan*/  refcount; int /*<<< orphan*/  match_criteria; int /*<<< orphan*/  prio; struct mlx5dr_table* tbl; } ;
struct mlx5dr_match_parameters {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx5dr_matcher*) ; 
 int FUNC2 (struct mlx5dr_matcher*,struct mlx5dr_match_parameters*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_matcher*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5dr_matcher*) ; 
 struct mlx5dr_matcher* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

struct mlx5dr_matcher *
FUNC11(struct mlx5dr_table *tbl,
		      u16 priority,
		      u8 match_criteria_enable,
		      struct mlx5dr_match_parameters *mask)
{
	struct mlx5dr_matcher *matcher;
	int ret;

	FUNC9(&tbl->refcount);

	matcher = FUNC5(sizeof(*matcher), GFP_KERNEL);
	if (!matcher)
		goto dec_ref;

	matcher->tbl = tbl;
	matcher->prio = priority;
	matcher->match_criteria = match_criteria_enable;
	FUNC10(&matcher->refcount, 1);
	FUNC0(&matcher->matcher_list);

	FUNC6(&tbl->dmn->mutex);

	ret = FUNC2(matcher, mask);
	if (ret)
		goto free_matcher;

	ret = FUNC1(matcher);
	if (ret)
		goto matcher_uninit;

	FUNC7(&tbl->dmn->mutex);

	return matcher;

matcher_uninit:
	FUNC3(matcher);
free_matcher:
	FUNC7(&tbl->dmn->mutex);
	FUNC4(matcher);
dec_ref:
	FUNC8(&tbl->refcount);
	return NULL;
}
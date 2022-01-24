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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5dr_table {int /*<<< orphan*/  refcount; int /*<<< orphan*/  level; struct mlx5dr_domain* dmn; } ;
struct mlx5dr_domain {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct mlx5dr_table*) ; 
 int FUNC1 (struct mlx5dr_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_table*) ; 
 struct mlx5dr_table* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

struct mlx5dr_table *FUNC8(struct mlx5dr_domain *dmn, u32 level)
{
	struct mlx5dr_table *tbl;
	int ret;

	FUNC6(&dmn->refcount);

	tbl = FUNC4(sizeof(*tbl), GFP_KERNEL);
	if (!tbl)
		goto dec_ref;

	tbl->dmn = dmn;
	tbl->level = level;
	FUNC7(&tbl->refcount, 1);

	ret = FUNC1(tbl);
	if (ret)
		goto free_tbl;

	ret = FUNC0(tbl);
	if (ret)
		goto uninit_tbl;

	return tbl;

uninit_tbl:
	FUNC2(tbl);
free_tbl:
	FUNC3(tbl);
dec_ref:
	FUNC5(&dmn->refcount);
	return NULL;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx5dr_table {int dummy; } ;
struct TYPE_5__ {struct mlx5dr_table* dr_table; } ;
struct mlx5_flow_table {TYPE_2__ fs_dr_table; int /*<<< orphan*/  id; int /*<<< orphan*/  level; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  dr_domain; } ;
struct mlx5_flow_root_namespace {int /*<<< orphan*/  dev; TYPE_1__ fs_dr_domain; } ;
struct TYPE_6__ {int (* create_flow_table ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,unsigned int,struct mlx5_flow_table*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 () ; 
 struct mlx5dr_table* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5dr_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5dr_table*) ; 
 int FUNC6 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*) ; 
 int FUNC7 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,unsigned int,struct mlx5_flow_table*) ; 

__attribute__((used)) static int FUNC8(struct mlx5_flow_root_namespace *ns,
					 struct mlx5_flow_table *ft,
					 unsigned int log_size,
					 struct mlx5_flow_table *next_ft)
{
	struct mlx5dr_table *tbl;
	int err;

	if (FUNC1(ft->flags))
		return FUNC2()->create_flow_table(ns, ft,
								    log_size,
								    next_ft);

	tbl = FUNC3(ns->fs_dr_domain.dr_domain,
				  ft->level);
	if (!tbl) {
		FUNC0(ns->dev, "Failed creating dr flow_table\n");
		return -EINVAL;
	}

	ft->fs_dr_table.dr_table = tbl;
	ft->id = FUNC5(tbl);

	if (next_ft) {
		err = FUNC6(ns, ft, next_ft);
		if (err) {
			FUNC4(tbl);
			ft->fs_dr_table.dr_table = NULL;
			return err;
		}
	}

	return 0;
}
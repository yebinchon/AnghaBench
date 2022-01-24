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
struct mlx5dr_action {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dr_table; struct mlx5dr_action* miss_action; } ;
struct mlx5_flow_table {TYPE_1__ fs_dr_table; int /*<<< orphan*/  flags; } ;
struct mlx5_flow_root_namespace {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int (* destroy_flow_table ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 () ; 
 int FUNC3 (struct mlx5dr_action*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ; 

__attribute__((used)) static int FUNC6(struct mlx5_flow_root_namespace *ns,
					  struct mlx5_flow_table *ft)
{
	struct mlx5dr_action *action = ft->fs_dr_table.miss_action;
	int err;

	if (FUNC1(ft->flags))
		return FUNC2()->destroy_flow_table(ns, ft);

	err = FUNC4(ft->fs_dr_table.dr_table);
	if (err) {
		FUNC0(ns->dev, "Failed to destroy flow_table (%d)\n",
			      err);
		return err;
	}
	if (action) {
		err = FUNC3(action);
		if (err) {
			FUNC0(ns->dev, "Failed to destroy action(%d)\n",
				      err);
			return err;
		}
	}

	return err;
}
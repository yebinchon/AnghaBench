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
struct mlx5_fs_dr_rule {int num_actions; int /*<<< orphan*/ * dr_actions; int /*<<< orphan*/  dr_rule; } ;
struct mlx5_flow_table {int /*<<< orphan*/  flags; } ;
struct mlx5_flow_root_namespace {int dummy; } ;
struct fs_fte {struct mlx5_fs_dr_rule fs_dr_rule; } ;
struct TYPE_2__ {int (* delete_fte ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct fs_fte*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct fs_fte*) ; 

__attribute__((used)) static int FUNC7(struct mlx5_flow_root_namespace *ns,
				  struct mlx5_flow_table *ft,
				  struct fs_fte *fte)
{
	struct mlx5_fs_dr_rule *rule = &fte->fs_dr_rule;
	int err;
	int i;

	if (FUNC2(ft->flags))
		return FUNC3()->delete_fte(ns, ft, fte);

	err = FUNC5(rule->dr_rule);
	if (err)
		return err;

	for (i = 0; i < rule->num_actions; i++)
		if (!FUNC0(rule->dr_actions[i]))
			FUNC4(rule->dr_actions[i]);

	FUNC1(rule->dr_actions);
	return 0;
}
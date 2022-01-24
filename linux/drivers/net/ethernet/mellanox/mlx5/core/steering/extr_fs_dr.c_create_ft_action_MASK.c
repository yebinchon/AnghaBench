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
struct TYPE_4__ {int /*<<< orphan*/  dr_table; } ;
struct mlx5_flow_table {TYPE_2__ fs_dr_table; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {struct mlx5_flow_table* ft; } ;
struct mlx5_flow_rule {TYPE_1__ dest_attr; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct mlx5dr_action* FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlx5dr_action* FUNC2 (struct mlx5_flow_table*,struct mlx5_core_dev*) ; 

__attribute__((used)) static struct mlx5dr_action *FUNC3(struct mlx5_core_dev *dev,
					      struct mlx5_flow_rule *dst)
{
	struct mlx5_flow_table *dest_ft = dst->dest_attr.ft;

	if (FUNC0(dest_ft->flags))
		return FUNC2(dest_ft, dev);
	return FUNC1(dest_ft->fs_dr_table.dr_table);
}
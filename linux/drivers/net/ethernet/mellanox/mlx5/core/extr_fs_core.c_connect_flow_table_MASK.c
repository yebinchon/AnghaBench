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
struct mlx5_flow_table {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  children; } ;
struct fs_prio {TYPE_1__ node; } ;
struct TYPE_4__ {int /*<<< orphan*/  modify_root; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,struct mlx5_flow_table*,struct mlx5_flow_table*) ; 
 int FUNC2 (struct mlx5_core_dev*,struct mlx5_flow_table*,struct fs_prio*) ; 
 struct mlx5_flow_table* FUNC3 (struct fs_prio*) ; 
 TYPE_2__ flow_table_properties_nic_receive ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mlx5_flow_table*,struct fs_prio*) ; 

__attribute__((used)) static int FUNC6(struct mlx5_core_dev *dev, struct mlx5_flow_table *ft,
			      struct fs_prio *prio)
{
	struct mlx5_flow_table *next_ft;
	int err = 0;

	/* Connect_prev_fts and update_root_ft_create are mutually exclusive */

	if (FUNC4(&prio->node.children)) {
		err = FUNC2(dev, ft, prio);
		if (err)
			return err;

		next_ft = FUNC3(prio);
		err = FUNC1(dev, ft, next_ft);
		if (err)
			return err;
	}

	if (FUNC0(dev,
			       flow_table_properties_nic_receive.modify_root))
		err = FUNC5(ft, prio);
	return err;
}
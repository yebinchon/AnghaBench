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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct mlx5_flow_table {TYPE_1__ node; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_prio {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_core_dev*,struct fs_prio*,struct mlx5_flow_table*) ; 
 struct mlx5_flow_table* FUNC1 (struct fs_prio*) ; 
 int /*<<< orphan*/  FUNC2 (struct fs_prio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mlx5_core_dev *dev,
			    struct mlx5_flow_table *ft,
			    struct fs_prio *prio)
{
	struct mlx5_flow_table *prev_ft;

	prev_ft = FUNC1(prio);
	if (prev_ft) {
		struct fs_prio *prev_prio;

		FUNC2(prev_prio, prev_ft->node.parent);
		return FUNC0(dev, prev_prio, ft);
	}
	return 0;
}
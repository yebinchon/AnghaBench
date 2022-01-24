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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int /*<<< orphan*/  version; } ;
struct mlx5_flow_table {TYPE_3__ node; int /*<<< orphan*/  fgs_hash; } ;
struct mlx5_flow_steering {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct mlx5_flow_group {TYPE_1__ node; int /*<<< orphan*/  hash; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 struct mlx5_flow_group* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlx5_flow_group*) ; 
 struct mlx5_flow_group* FUNC2 (struct mlx5_flow_steering*,int /*<<< orphan*/ ,void const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_flow_steering*,struct mlx5_flow_group*) ; 
 int /*<<< orphan*/  del_hw_flow_group ; 
 int /*<<< orphan*/  del_sw_flow_group ; 
 struct mlx5_flow_steering* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  rhash_fg ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx5_flow_group *FUNC10(struct mlx5_flow_table *ft,
						       u8 match_criteria_enable,
						       const void *match_criteria,
						       int start_index,
						       int end_index,
						       struct list_head *prev)
{
	struct mlx5_flow_steering *steering = FUNC5(&ft->node);
	struct mlx5_flow_group *fg;
	int ret;

	fg = FUNC2(steering, match_criteria_enable, match_criteria,
			      start_index, end_index);
	if (FUNC1(fg))
		return fg;

	/* initialize refcnt, add to parent list */
	ret = FUNC7(&ft->fgs_hash,
			      &fg->hash,
			      rhash_fg);
	if (ret) {
		FUNC4(steering, fg);
		return FUNC0(ret);
	}

	FUNC9(&fg->node, del_hw_flow_group, del_sw_flow_group);
	FUNC8(&fg->node, &ft->node);
	/* Add node to group list */
	FUNC6(&fg->node.list, prev);
	FUNC3(&ft->node.version);

	return fg;
}
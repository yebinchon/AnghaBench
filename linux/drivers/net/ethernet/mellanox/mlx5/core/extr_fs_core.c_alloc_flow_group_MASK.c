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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_flow_steering {int /*<<< orphan*/  fgs_cache; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  match_criteria; int /*<<< orphan*/  match_criteria_enable; } ;
struct mlx5_flow_group {int start_index; int max_ftes; TYPE_2__ node; TYPE_1__ mask; int /*<<< orphan*/  fte_allocator; int /*<<< orphan*/  ftes_hash; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlx5_flow_group* FUNC0 (int) ; 
 int /*<<< orphan*/  FS_TYPE_FLOW_GROUP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mlx5_flow_group*) ; 
 struct mlx5_flow_group* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  rhash_fte ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_flow_group *FUNC6(struct mlx5_flow_steering *steering,
						u8 match_criteria_enable,
						const void *match_criteria,
						int start_index,
						int end_index)
{
	struct mlx5_flow_group *fg;
	int ret;

	fg = FUNC3(steering->fgs_cache, GFP_KERNEL);
	if (!fg)
		return FUNC0(-ENOMEM);

	ret = FUNC5(&fg->ftes_hash, &rhash_fte);
	if (ret) {
		FUNC2(steering->fgs_cache, fg);
		return FUNC0(ret);
	}

	FUNC1(&fg->fte_allocator);
	fg->mask.match_criteria_enable = match_criteria_enable;
	FUNC4(&fg->mask.match_criteria, match_criteria,
	       sizeof(fg->mask.match_criteria));
	fg->node.type =  FS_TYPE_FLOW_GROUP;
	fg->start_index = start_index;
	fg->max_ftes = end_index - start_index + 1;

	return fg;
}
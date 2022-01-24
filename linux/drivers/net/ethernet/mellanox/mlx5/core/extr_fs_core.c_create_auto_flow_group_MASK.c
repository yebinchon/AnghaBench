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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_flow_table {int /*<<< orphan*/  node; } ;
struct mlx5_flow_root_namespace {TYPE_2__* cmds; } ;
struct TYPE_6__ {int active; } ;
struct TYPE_4__ {int match_criteria_enable; int /*<<< orphan*/ * match_criteria; } ;
struct mlx5_flow_group {int start_index; int max_ftes; TYPE_3__ node; TYPE_1__ mask; } ;
struct TYPE_5__ {int (* create_flow_group ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int /*<<< orphan*/ *,struct mlx5_flow_group*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_flow_group_in ; 
 int /*<<< orphan*/  end_flow_index ; 
 struct mlx5_flow_root_namespace* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  match_criteria ; 
 int /*<<< orphan*/  match_criteria_enable ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  misc_parameters ; 
 int /*<<< orphan*/  source_eswitch_owner_vhca_id ; 
 int /*<<< orphan*/  source_eswitch_owner_vhca_id_valid ; 
 int /*<<< orphan*/  start_flow_index ; 
 int FUNC8 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int /*<<< orphan*/ *,struct mlx5_flow_group*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_flow_group*) ; 

__attribute__((used)) static int FUNC10(struct mlx5_flow_table *ft,
				  struct mlx5_flow_group *fg)
{
	struct mlx5_flow_root_namespace *root = FUNC4(&ft->node);
	int inlen = FUNC3(create_flow_group_in);
	void *match_criteria_addr;
	u8 src_esw_owner_mask_on;
	void *misc;
	int err;
	u32 *in;

	in = FUNC6(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC2(create_flow_group_in, in, match_criteria_enable,
		 fg->mask.match_criteria_enable);
	FUNC2(create_flow_group_in, in, start_flow_index, fg->start_index);
	FUNC2(create_flow_group_in, in, end_flow_index,   fg->start_index +
		 fg->max_ftes - 1);

	misc = FUNC0(fte_match_param, fg->mask.match_criteria,
			    misc_parameters);
	src_esw_owner_mask_on = !!FUNC1(fte_match_set_misc, misc,
					 source_eswitch_owner_vhca_id);
	FUNC2(create_flow_group_in, in,
		 source_eswitch_owner_vhca_id_valid, src_esw_owner_mask_on);

	match_criteria_addr = FUNC0(create_flow_group_in,
					   in, match_criteria);
	FUNC7(match_criteria_addr, fg->mask.match_criteria,
	       sizeof(fg->mask.match_criteria));

	err = root->cmds->create_flow_group(root, ft, in, fg);
	if (!err) {
		fg->node.active = true;
		FUNC9(fg);
	}

	FUNC5(in);
	return err;
}
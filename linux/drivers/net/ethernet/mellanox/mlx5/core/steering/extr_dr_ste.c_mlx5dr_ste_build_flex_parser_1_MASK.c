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
struct mlx5dr_ste_build {int rx; int inner; int /*<<< orphan*/ * ste_build_tag_func; int /*<<< orphan*/  bit_mask; int /*<<< orphan*/  byte_mask; int /*<<< orphan*/  lu_type; struct mlx5dr_cmd_caps* caps; } ;
struct mlx5dr_match_param {int dummy; } ;
struct mlx5dr_cmd_caps {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5DR_STE_LU_TYPE_FLEX_PARSER_1 ; 
 int FUNC0 (struct mlx5dr_match_param*,struct mlx5dr_cmd_caps*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dr_ste_build_flex_parser_1_tag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct mlx5dr_ste_build *sb,
				   struct mlx5dr_match_param *mask,
				   struct mlx5dr_cmd_caps *caps,
				   bool inner, bool rx)
{
	int ret;

	ret = FUNC0(mask, caps, sb->bit_mask);
	if (ret)
		return ret;

	sb->rx = rx;
	sb->inner = inner;
	sb->caps = caps;
	sb->lu_type = MLX5DR_STE_LU_TYPE_FLEX_PARSER_1;
	sb->byte_mask = FUNC1(sb->bit_mask);
	sb->ste_build_tag_func = &dr_ste_build_flex_parser_1_tag;

	return 0;
}
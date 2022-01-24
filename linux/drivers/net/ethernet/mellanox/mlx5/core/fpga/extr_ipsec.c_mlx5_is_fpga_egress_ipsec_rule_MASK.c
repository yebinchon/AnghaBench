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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_flow_context {int flags; } ;
struct mlx5_flow_act {int action; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int FLOW_CONTEXT_HAS_TAG ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int MLX5_FLOW_CONTEXT_ACTION_ALLOW ; 
 int MLX5_FLOW_CONTEXT_ACTION_ENCRYPT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int MLX5_MATCH_MISC_PARAMETERS ; 
 int MLX5_MATCH_OUTER_HEADERS ; 
 int /*<<< orphan*/  dmac_15_0 ; 
 int /*<<< orphan*/  dmac_47_16 ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_lyr_2_4 ; 
 int FUNC2 (struct mlx5_core_dev*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  outer_headers ; 
 int /*<<< orphan*/  smac_15_0 ; 
 int /*<<< orphan*/  smac_47_16 ; 

__attribute__((used)) static bool FUNC3(struct mlx5_core_dev *dev,
					   u8 match_criteria_enable,
					   const u32 *match_c,
					   const u32 *match_v,
					   struct mlx5_flow_act *flow_act,
					   struct mlx5_flow_context *flow_context)
{
	const void *outer_c = FUNC0(fte_match_param, match_c,
					   outer_headers);
	bool is_dmac = FUNC1(fte_match_set_lyr_2_4, outer_c, dmac_47_16) ||
			FUNC1(fte_match_set_lyr_2_4, outer_c, dmac_15_0);
	bool is_smac = FUNC1(fte_match_set_lyr_2_4, outer_c, smac_47_16) ||
			FUNC1(fte_match_set_lyr_2_4, outer_c, smac_15_0);
	int ret;

	ret = FUNC2(dev, match_criteria_enable, match_c,
				      match_v);
	if (!ret)
		return ret;

	if (is_dmac || is_smac ||
	    (match_criteria_enable &
	     ~(MLX5_MATCH_OUTER_HEADERS | MLX5_MATCH_MISC_PARAMETERS)) ||
	    (flow_act->action & ~(MLX5_FLOW_CONTEXT_ACTION_ENCRYPT | MLX5_FLOW_CONTEXT_ACTION_ALLOW)) ||
	     (flow_context->flags & FLOW_CONTEXT_HAS_TAG))
		return false;

	return true;
}
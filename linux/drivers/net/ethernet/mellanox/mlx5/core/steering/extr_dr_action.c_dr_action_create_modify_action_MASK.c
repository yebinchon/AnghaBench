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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct mlx5dr_icm_chunk {int icm_addr; } ;
struct TYPE_5__ {int hdr_modify_icm_addr; } ;
struct TYPE_6__ {TYPE_2__ caps; } ;
struct mlx5dr_domain {TYPE_3__ info; int /*<<< orphan*/  action_icm_pool; } ;
struct TYPE_4__ {int modify_ttl; size_t num_of_actions; int index; int /*<<< orphan*/ * data; struct mlx5dr_icm_chunk* chunk; } ;
struct mlx5dr_action {TYPE_1__ rewrite; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int ACTION_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  DR_CHUNK_SIZE_16 ; 
 size_t DR_MODIFY_ACTION_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct mlx5dr_domain*,size_t,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_domain*,char*,size_t,size_t) ; 
 struct mlx5dr_icm_chunk* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5dr_icm_chunk*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx5dr_domain*,struct mlx5dr_action*) ; 

__attribute__((used)) static int FUNC8(struct mlx5dr_domain *dmn,
					  size_t actions_sz,
					  __be64 actions[],
					  struct mlx5dr_action *action)
{
	struct mlx5dr_icm_chunk *chunk;
	u32 max_hw_actions;
	u32 num_hw_actions;
	u32 num_sw_actions;
	__be64 *hw_actions;
	bool modify_ttl;
	int ret;

	num_sw_actions = actions_sz / DR_MODIFY_ACTION_SIZE;
	max_hw_actions = FUNC6(DR_CHUNK_SIZE_16);

	if (num_sw_actions > max_hw_actions) {
		FUNC3(dmn, "Max number of actions %d exceeds limit %d\n",
			   num_sw_actions, max_hw_actions);
		return -EINVAL;
	}

	chunk = FUNC4(dmn->action_icm_pool, DR_CHUNK_SIZE_16);
	if (!chunk)
		return -ENOMEM;

	hw_actions = FUNC1(1, max_hw_actions * DR_MODIFY_ACTION_SIZE, GFP_KERNEL);
	if (!hw_actions) {
		ret = -ENOMEM;
		goto free_chunk;
	}

	ret = FUNC0(dmn,
					       max_hw_actions,
					       num_sw_actions,
					       actions,
					       hw_actions,
					       &num_hw_actions,
					       &modify_ttl);
	if (ret)
		goto free_hw_actions;

	action->rewrite.chunk = chunk;
	action->rewrite.modify_ttl = modify_ttl;
	action->rewrite.data = (u8 *)hw_actions;
	action->rewrite.num_of_actions = num_hw_actions;
	action->rewrite.index = (chunk->icm_addr -
				 dmn->info.caps.hdr_modify_icm_addr) /
				 ACTION_CACHE_LINE_SIZE;

	ret = FUNC7(dmn, action);
	if (ret)
		goto free_hw_actions;

	return 0;

free_hw_actions:
	FUNC2(hw_actions);
free_chunk:
	FUNC5(chunk);
	return ret;
}
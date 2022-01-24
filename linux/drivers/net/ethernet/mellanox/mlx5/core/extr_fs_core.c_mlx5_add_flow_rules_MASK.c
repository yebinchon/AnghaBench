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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct mlx5_flow_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  fwd_rules; TYPE_2__ node; } ;
struct mlx5_flow_spec {int dummy; } ;
struct mlx5_flow_root_namespace {int /*<<< orphan*/  chain_lock; } ;
struct mlx5_flow_handle {TYPE_1__** rule; } ;
struct mlx5_flow_destination {struct mlx5_flow_table* ft; int /*<<< orphan*/  type; } ;
struct mlx5_flow_act {scalar_t__ action; } ;
struct fs_prio {int dummy; } ;
struct TYPE_3__ {scalar_t__ sw_action; int /*<<< orphan*/  next_ft; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct mlx5_flow_handle* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_flow_handle*) ; 
 scalar_t__ MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ; 
 scalar_t__ MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO ; 
 int /*<<< orphan*/  MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE ; 
 struct mlx5_flow_handle* FUNC2 (struct mlx5_flow_table*,struct mlx5_flow_spec const*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int) ; 
 struct mlx5_flow_table* FUNC3 (struct fs_prio*) ; 
 struct mlx5_flow_root_namespace* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct fs_prio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct mlx5_flow_handle *
FUNC11(struct mlx5_flow_table *ft,
		    const struct mlx5_flow_spec *spec,
		    struct mlx5_flow_act *flow_act,
		    struct mlx5_flow_destination *dest,
		    int num_dest)
{
	struct mlx5_flow_root_namespace *root = FUNC4(&ft->node);
	struct mlx5_flow_destination gen_dest = {};
	struct mlx5_flow_table *next_ft = NULL;
	struct mlx5_flow_handle *handle = NULL;
	u32 sw_action = flow_act->action;
	struct fs_prio *prio;

	FUNC5(prio, ft->node.parent);
	if (flow_act->action == MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO) {
		if (!FUNC6(ft))
			return FUNC0(-EOPNOTSUPP);
		if (num_dest)
			return FUNC0(-EINVAL);
		FUNC9(&root->chain_lock);
		next_ft = FUNC3(prio);
		if (next_ft) {
			gen_dest.type = MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE;
			gen_dest.ft = next_ft;
			dest = &gen_dest;
			num_dest = 1;
			flow_act->action = MLX5_FLOW_CONTEXT_ACTION_FWD_DEST;
		} else {
			FUNC10(&root->chain_lock);
			return FUNC0(-EOPNOTSUPP);
		}
	}

	handle = FUNC2(ft, spec, flow_act, dest, num_dest);

	if (sw_action == MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO) {
		if (!FUNC1(handle) &&
		    (FUNC8(&handle->rule[0]->next_ft))) {
			FUNC9(&next_ft->lock);
			FUNC7(&handle->rule[0]->next_ft,
				 &next_ft->fwd_rules);
			FUNC10(&next_ft->lock);
			handle->rule[0]->sw_action = MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO;
		}
		FUNC10(&root->chain_lock);
	}
	return handle;
}
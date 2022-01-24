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
struct mlx5_flow_spec {int /*<<< orphan*/  flow_context; } ;
struct mlx5_flow_handle {int num_rules; TYPE_3__** rule; } ;
struct mlx5_flow_group {int dummy; } ;
struct mlx5_flow_destination {int dummy; } ;
struct mlx5_flow_act {int action; } ;
struct TYPE_4__ {int action; } ;
struct fs_fte {int /*<<< orphan*/  node; TYPE_1__ action; } ;
struct TYPE_5__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_6__ {TYPE_2__ node; } ;

/* Variables and functions */
 struct mlx5_flow_handle* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlx5_flow_handle*) ; 
 struct mlx5_flow_handle* FUNC2 (struct fs_fte*,struct mlx5_flow_group*,struct mlx5_flow_destination*,int,int) ; 
 int FUNC3 (struct fs_fte*,int /*<<< orphan*/ *,struct mlx5_flow_act*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct fs_fte*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_flow_handle *FUNC8(struct mlx5_flow_group *fg,
					    const struct mlx5_flow_spec *spec,
					    struct mlx5_flow_act *flow_act,
					    struct mlx5_flow_destination *dest,
					    int dest_num,
					    struct fs_fte *fte)
{
	struct mlx5_flow_handle *handle;
	int old_action;
	int i;
	int ret;

	ret = FUNC3(fte, &spec->flow_context, flow_act);
	if (ret)
		return FUNC0(ret);

	old_action = fte->action.action;
	fte->action.action |= flow_act->action;
	handle = FUNC2(fte, fg, dest, dest_num,
			      old_action != flow_act->action);
	if (FUNC1(handle)) {
		fte->action.action = old_action;
		return handle;
	}
	FUNC6(fte, false);

	for (i = 0; i < handle->num_rules; i++) {
		if (FUNC4(&handle->rule[i]->node.refcount) == 1) {
			FUNC7(&handle->rule[i]->node, &fte->node);
			FUNC5(handle->rule[i]);
		}
	}
	return handle;
}
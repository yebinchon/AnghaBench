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
struct mlx5_flow_context {int flags; scalar_t__ flow_tag; } ;
struct mlx5_flow_act {int /*<<< orphan*/  action; } ;
struct TYPE_3__ {scalar_t__ flow_tag; } ;
struct TYPE_4__ {int /*<<< orphan*/  action; } ;
struct fs_fte {TYPE_1__ flow_context; int /*<<< orphan*/  node; TYPE_2__ action; } ;

/* Variables and functions */
 int EEXIST ; 
 int FLOW_CONTEXT_HAS_TAG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(struct fs_fte *fte,
				  const struct mlx5_flow_context *flow_context,
				  const struct mlx5_flow_act *flow_act)
{
	if (FUNC0(flow_act->action, fte->action.action)) {
		FUNC2(FUNC1(&fte->node),
			       "Found two FTEs with conflicting actions\n");
		return -EEXIST;
	}

	if ((flow_context->flags & FLOW_CONTEXT_HAS_TAG) &&
	    fte->flow_context.flow_tag != flow_context->flow_tag) {
		FUNC2(FUNC1(&fte->node),
			       "FTE flow tag %u already exists with different flow tag %u\n",
			       fte->flow_context.flow_tag,
			       flow_context->flow_tag);
		return -EEXIST;
	}

	return 0;
}
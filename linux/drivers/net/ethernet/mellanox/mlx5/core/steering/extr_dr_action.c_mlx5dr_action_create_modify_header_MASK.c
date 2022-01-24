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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5dr_domain {int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {struct mlx5dr_domain* dmn; } ;
struct mlx5dr_action {TYPE_1__ rewrite; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  DR_ACTION_TYP_MODIFY_HDR ; 
 size_t DR_MODIFY_ACTION_SIZE ; 
 struct mlx5dr_action* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5dr_domain*,size_t,int /*<<< orphan*/ *,struct mlx5dr_action*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_action*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_domain*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct mlx5dr_action *
FUNC6(struct mlx5dr_domain *dmn,
				   u32 flags,
				   size_t actions_sz,
				   __be64 actions[])
{
	struct mlx5dr_action *action;
	int ret = 0;

	FUNC5(&dmn->refcount);

	if (actions_sz % DR_MODIFY_ACTION_SIZE) {
		FUNC3(dmn, "Invalid modify actions size provided\n");
		goto dec_ref;
	}

	action = FUNC0(DR_ACTION_TYP_MODIFY_HDR);
	if (!action)
		goto dec_ref;

	action->rewrite.dmn = dmn;

	ret = FUNC1(dmn,
					     actions_sz,
					     actions,
					     action);
	if (ret) {
		FUNC3(dmn, "Failed creating modify header action %d\n", ret);
		goto free_action;
	}

	return action;

free_action:
	FUNC2(action);
dec_ref:
	FUNC4(&dmn->refcount);
	return NULL;
}
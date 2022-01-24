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
struct mlx5dr_domain {int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {struct mlx5dr_domain* dmn; } ;
struct mlx5dr_action {TYPE_1__ reformat; } ;
typedef  enum mlx5dr_action_type { ____Placeholder_mlx5dr_action_type } mlx5dr_action_type ;
typedef  enum mlx5dr_action_reformat_type { ____Placeholder_mlx5dr_action_reformat_type } mlx5dr_action_reformat_type ;

/* Variables and functions */
 struct mlx5dr_action* FUNC0 (int) ; 
 int FUNC1 (struct mlx5dr_domain*,size_t,void*,struct mlx5dr_action*) ; 
 int FUNC2 (int,int*) ; 
 int FUNC3 (int,struct mlx5dr_domain*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5dr_action*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5dr_domain*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct mlx5dr_action *
FUNC8(struct mlx5dr_domain *dmn,
				     enum mlx5dr_action_reformat_type reformat_type,
				     size_t data_sz,
				     void *data)
{
	enum mlx5dr_action_type action_type;
	struct mlx5dr_action *action;
	int ret;

	FUNC7(&dmn->refcount);

	/* General checks */
	ret = FUNC2(reformat_type, &action_type);
	if (ret) {
		FUNC5(dmn, "Invalid reformat_type provided\n");
		goto dec_ref;
	}

	ret = FUNC3(action_type, dmn, data_sz, data);
	if (ret)
		goto dec_ref;

	action = FUNC0(action_type);
	if (!action)
		goto dec_ref;

	action->reformat.dmn = dmn;

	ret = FUNC1(dmn,
					       data_sz,
					       data,
					       action);
	if (ret) {
		FUNC5(dmn, "Failed creating reformat action %d\n", ret);
		goto free_action;
	}

	return action;

free_action:
	FUNC4(action);
dec_ref:
	FUNC6(&dmn->refcount);
	return NULL;
}
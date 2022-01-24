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
struct mlx5dr_action {int action_type; int /*<<< orphan*/  refcount; } ;
typedef  enum mlx5dr_action_type { ____Placeholder_mlx5dr_action_type } mlx5dr_action_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mlx5dr_action* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct mlx5dr_action *
FUNC2(enum mlx5dr_action_type action_type)
{
	struct mlx5dr_action *action;

	action = FUNC0(sizeof(*action), GFP_KERNEL);
	if (!action)
		return NULL;

	action->action_type = action_type;
	FUNC1(&action->refcount, 1);

	return action;
}
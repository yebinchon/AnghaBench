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
struct mlx5_flow_act {int action; int /*<<< orphan*/ * vlan; } ;

/* Variables and functions */
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH ; 
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct mlx5_flow_act *src,
				  struct mlx5_flow_act *dst)
{
	if (!(src->action & MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH))
		return;

	src->action &= ~MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH;
	dst->action |= MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH;
	FUNC0(&dst->vlan[0], &src->vlan[0], sizeof(src->vlan[0]));
	FUNC1(&src->vlan[0], 0, sizeof(src->vlan[0]));

	if (!(src->action & MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2))
		return;

	src->action &= ~MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2;
	dst->action |= MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2;
	FUNC0(&dst->vlan[1], &src->vlan[1], sizeof(src->vlan[1]));
	FUNC1(&src->vlan[1], 0, sizeof(src->vlan[1]));
}
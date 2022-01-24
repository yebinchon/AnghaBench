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
struct mlx5_flow_spec {int dummy; } ;
struct mlx5_flow_act {int action; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH ; 
 scalar_t__ FUNC1 (struct mlx5_eswitch*,struct mlx5_flow_spec*) ; 
 int /*<<< orphan*/  termination_table ; 

bool
FUNC2(struct mlx5_eswitch *esw,
			      struct mlx5_flow_act *flow_act,
			      struct mlx5_flow_spec *spec)
{
	if (!FUNC0(esw->dev, termination_table))
		return false;

	/* push vlan on RX */
	return (flow_act->action & MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH) &&
		FUNC1(esw, spec);
}
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
struct mlx5e_tc_flow {int /*<<< orphan*/ * rule; struct mlx5_nic_flow_attr* nic_attr; } ;
struct TYPE_3__ {int /*<<< orphan*/  t_lock; int /*<<< orphan*/ * t; } ;
struct TYPE_4__ {TYPE_1__ tc; } ;
struct mlx5e_priv {TYPE_2__ fs; int /*<<< orphan*/  mdev; } ;
struct mlx5_nic_flow_attr {int action; struct mlx5_fc* counter; } ;
struct mlx5_fc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HAIRPIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLX5_FLOW_CONTEXT_ACTION_MOD_HDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIC_OFFLOAD ; 
 scalar_t__ FUNC2 (struct mlx5e_tc_flow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mlx5_fc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_priv*,struct mlx5e_tc_flow*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_priv*,struct mlx5e_tc_flow*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct mlx5e_priv *priv,
				  struct mlx5e_tc_flow *flow)
{
	struct mlx5_nic_flow_attr *attr = flow->nic_attr;
	struct mlx5_fc *counter = NULL;

	counter = attr->counter;
	if (!FUNC0(flow->rule[0]))
		FUNC3(flow->rule[0]);
	FUNC5(priv->mdev, counter);

	FUNC9(&priv->fs.tc.t_lock);
	if (!FUNC8(priv, FUNC1(NIC_OFFLOAD)) && priv->fs.tc.t) {
		FUNC4(priv->fs.tc.t);
		priv->fs.tc.t = NULL;
	}
	FUNC10(&priv->fs.tc.t_lock);

	if (attr->action & MLX5_FLOW_CONTEXT_ACTION_MOD_HDR)
		FUNC6(priv, flow);

	if (FUNC2(flow, HAIRPIN))
		FUNC7(priv, flow);
}
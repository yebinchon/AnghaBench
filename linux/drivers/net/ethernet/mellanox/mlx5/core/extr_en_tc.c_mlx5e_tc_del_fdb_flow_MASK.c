#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_tc_flow {struct mlx5_esw_flow_attr* esw_attr; } ;
struct mlx5e_priv {TYPE_2__* mdev; } ;
struct mlx5_eswitch {int dummy; } ;
struct mlx5_esw_flow_attr {int action; int /*<<< orphan*/  counter; int /*<<< orphan*/  counter_dev; TYPE_4__* parse_attr; TYPE_3__* dests; } ;
struct TYPE_8__ {int /*<<< orphan*/ * tun_info; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_5__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_6__ {int /*<<< orphan*/  geneve; TYPE_1__ priv; } ;

/* Variables and functions */
 int MLX5_ESW_DEST_ENCAP ; 
 int MLX5_FLOW_CONTEXT_ACTION_COUNT ; 
 int MLX5_FLOW_CONTEXT_ACTION_MOD_HDR ; 
 int MLX5_MAX_FLOW_FWD_VPORTS ; 
 int /*<<< orphan*/  NOT_READY ; 
 int /*<<< orphan*/  SLOW ; 
 scalar_t__ FUNC0 (struct mlx5e_tc_flow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_eswitch*,struct mlx5_esw_flow_attr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mlx5e_tc_flow*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_priv*,struct mlx5e_tc_flow*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_priv*,struct mlx5e_tc_flow*) ; 
 scalar_t__ FUNC9 (struct mlx5e_tc_flow*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_eswitch*,struct mlx5e_tc_flow*,struct mlx5_esw_flow_attr*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_eswitch*,struct mlx5e_tc_flow*,struct mlx5_esw_flow_attr*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5e_tc_flow*) ; 

__attribute__((used)) static void FUNC13(struct mlx5e_priv *priv,
				  struct mlx5e_tc_flow *flow)
{
	struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;
	struct mlx5_esw_flow_attr *attr = flow->esw_attr;
	struct mlx5_esw_flow_attr slow_attr;
	int out_index;

	if (FUNC0(flow, NOT_READY)) {
		FUNC12(flow);
		FUNC2(attr->parse_attr);
		return;
	}

	if (FUNC9(flow)) {
		if (FUNC0(flow, SLOW))
			FUNC11(esw, flow, &slow_attr);
		else
			FUNC10(esw, flow, attr);
	}

	if (FUNC5(flow))
		FUNC6(priv->mdev->geneve);

	FUNC3(esw, attr);

	for (out_index = 0; out_index < MLX5_MAX_FLOW_FWD_VPORTS; out_index++)
		if (attr->dests[out_index].flags & MLX5_ESW_DEST_ENCAP) {
			FUNC7(priv, flow, out_index);
			FUNC1(attr->parse_attr->tun_info[out_index]);
		}
	FUNC2(attr->parse_attr);

	if (attr->action & MLX5_FLOW_CONTEXT_ACTION_MOD_HDR)
		FUNC8(priv, flow);

	if (attr->action & MLX5_FLOW_CONTEXT_ACTION_COUNT)
		FUNC4(attr->counter_dev, attr->counter);
}
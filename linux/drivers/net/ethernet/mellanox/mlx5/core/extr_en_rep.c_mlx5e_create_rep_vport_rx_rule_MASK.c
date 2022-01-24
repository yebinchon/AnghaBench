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
struct mlx5e_rep_priv {struct mlx5_flow_handle* vport_rx_rule; struct mlx5_eswitch_rep* rep; } ;
struct mlx5e_priv {TYPE_1__* direct_tir; struct mlx5e_rep_priv* ppriv; TYPE_3__* mdev; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_flow_destination {int /*<<< orphan*/  tir_num; int /*<<< orphan*/  type; } ;
struct mlx5_eswitch_rep {int /*<<< orphan*/  vport; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_5__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_6__ {TYPE_2__ priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  tirn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_flow_handle*) ; 
 int /*<<< orphan*/  MLX5_FLOW_DESTINATION_TYPE_TIR ; 
 int FUNC1 (struct mlx5_flow_handle*) ; 
 struct mlx5_flow_handle* FUNC2 (struct mlx5_eswitch*,int /*<<< orphan*/ ,struct mlx5_flow_destination*) ; 

__attribute__((used)) static int FUNC3(struct mlx5e_priv *priv)
{
	struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;
	struct mlx5e_rep_priv *rpriv = priv->ppriv;
	struct mlx5_eswitch_rep *rep = rpriv->rep;
	struct mlx5_flow_handle *flow_rule;
	struct mlx5_flow_destination dest;

	dest.type = MLX5_FLOW_DESTINATION_TYPE_TIR;
	dest.tir_num = priv->direct_tir[0].tirn;
	flow_rule = FUNC2(esw,
						      rep->vport,
						      &dest);
	if (FUNC0(flow_rule))
		return FUNC1(flow_rule);
	rpriv->vport_rx_rule = flow_rule;
	return 0;
}
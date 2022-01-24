#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ttc_params {TYPE_3__* inner_ttc; int /*<<< orphan*/ * indir_tirn; int /*<<< orphan*/  any_tt_tirn; } ;
struct TYPE_6__ {struct mlx5_flow_table* t; } ;
struct mlx5e_ttc_table {struct mlx5_flow_handle** tunnel_rules; struct mlx5_flow_handle** rules; TYPE_1__ ft; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_flow_destination {int /*<<< orphan*/  ft; int /*<<< orphan*/  type; int /*<<< orphan*/  tir_num; } ;
struct TYPE_10__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  etype; } ;
struct TYPE_9__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  etype; } ;
struct TYPE_7__ {int /*<<< orphan*/  t; } ;
struct TYPE_8__ {TYPE_2__ ft; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_flow_handle*) ; 
 int MLX5E_NUM_TT ; 
 int MLX5E_NUM_TUNNEL_TT ; 
 int MLX5E_TT_ANY ; 
 int /*<<< orphan*/  MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE ; 
 int /*<<< orphan*/  MLX5_FLOW_DESTINATION_TYPE_TIR ; 
 int FUNC1 (struct mlx5_flow_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_ttc_table*) ; 
 struct mlx5_flow_handle* FUNC3 (struct mlx5e_priv*,struct mlx5_flow_table*,struct mlx5_flow_destination*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* ttc_rules ; 
 TYPE_4__* ttc_tunnel_rules ; 

__attribute__((used)) static int FUNC6(struct mlx5e_priv *priv,
					  struct ttc_params *params,
					  struct mlx5e_ttc_table *ttc)
{
	struct mlx5_flow_destination dest = {};
	struct mlx5_flow_handle **rules;
	struct mlx5_flow_table *ft;
	int tt;
	int err;

	ft = ttc->ft.t;
	rules = ttc->rules;

	dest.type = MLX5_FLOW_DESTINATION_TYPE_TIR;
	for (tt = 0; tt < MLX5E_NUM_TT; tt++) {
		if (tt == MLX5E_TT_ANY)
			dest.tir_num = params->any_tt_tirn;
		else
			dest.tir_num = params->indir_tirn[tt];
		rules[tt] = FUNC3(priv, ft, &dest,
						    ttc_rules[tt].etype,
						    ttc_rules[tt].proto);
		if (FUNC0(rules[tt]))
			goto del_rules;
	}

	if (!params->inner_ttc || !FUNC4(priv->mdev))
		return 0;

	rules     = ttc->tunnel_rules;
	dest.type = MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE;
	dest.ft   = params->inner_ttc->ft.t;
	for (tt = 0; tt < MLX5E_NUM_TUNNEL_TT; tt++) {
		if (!FUNC5(priv->mdev,
						  ttc_tunnel_rules[tt].proto))
			continue;
		rules[tt] = FUNC3(priv, ft, &dest,
						    ttc_tunnel_rules[tt].etype,
						    ttc_tunnel_rules[tt].proto);
		if (FUNC0(rules[tt]))
			goto del_rules;
	}

	return 0;

del_rules:
	err = FUNC1(rules[tt]);
	rules[tt] = NULL;
	FUNC2(ttc);
	return err;
}
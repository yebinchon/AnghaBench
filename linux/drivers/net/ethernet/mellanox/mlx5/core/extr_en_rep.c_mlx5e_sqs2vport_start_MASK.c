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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_rep_sq {int /*<<< orphan*/  list; struct mlx5_flow_handle* send_to_vport_rule; } ;
struct mlx5e_rep_priv {int /*<<< orphan*/  vport_sqs_list; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_eswitch_rep {int /*<<< orphan*/  vport; } ;
struct mlx5_eswitch {scalar_t__ mode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mlx5_flow_handle*) ; 
 scalar_t__ MLX5_ESWITCH_OFFLOADS ; 
 int FUNC1 (struct mlx5_flow_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_rep_sq*) ; 
 struct mlx5e_rep_sq* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlx5_flow_handle* FUNC5 (struct mlx5_eswitch*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5e_rep_priv* FUNC6 (struct mlx5_eswitch_rep*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_eswitch*,struct mlx5_eswitch_rep*) ; 

__attribute__((used)) static int FUNC8(struct mlx5_eswitch *esw,
				 struct mlx5_eswitch_rep *rep,
				 u32 *sqns_array, int sqns_num)
{
	struct mlx5_flow_handle *flow_rule;
	struct mlx5e_rep_priv *rpriv;
	struct mlx5e_rep_sq *rep_sq;
	int err;
	int i;

	if (esw->mode != MLX5_ESWITCH_OFFLOADS)
		return 0;

	rpriv = FUNC6(rep);
	for (i = 0; i < sqns_num; i++) {
		rep_sq = FUNC3(sizeof(*rep_sq), GFP_KERNEL);
		if (!rep_sq) {
			err = -ENOMEM;
			goto out_err;
		}

		/* Add re-inject rule to the PF/representor sqs */
		flow_rule = FUNC5(esw,
								rep->vport,
								sqns_array[i]);
		if (FUNC0(flow_rule)) {
			err = FUNC1(flow_rule);
			FUNC2(rep_sq);
			goto out_err;
		}
		rep_sq->send_to_vport_rule = flow_rule;
		FUNC4(&rep_sq->list, &rpriv->vport_sqs_list);
	}
	return 0;

out_err:
	FUNC7(esw, rep);
	return err;
}
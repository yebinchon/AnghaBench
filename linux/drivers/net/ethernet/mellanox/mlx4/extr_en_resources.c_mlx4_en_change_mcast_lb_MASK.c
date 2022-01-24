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
struct mlx4_update_qp_params {int /*<<< orphan*/  flags; } ;
struct mlx4_qp {int /*<<< orphan*/  qpn; } ;
struct mlx4_en_priv {TYPE_1__* mdev; } ;
typedef  int /*<<< orphan*/  qp_params ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_UPDATE_QP_ETH_SRC_CHECK_MC_LB ; 
 int /*<<< orphan*/  MLX4_UPDATE_QP_PARAMS_FLAGS_ETH_CHECK_MC_LB ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_update_qp_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx4_update_qp_params*) ; 

int FUNC2(struct mlx4_en_priv *priv, struct mlx4_qp *qp,
			    int loopback)
{
	int ret;
	struct mlx4_update_qp_params qp_params;

	FUNC0(&qp_params, 0, sizeof(qp_params));
	if (!loopback)
		qp_params.flags = MLX4_UPDATE_QP_PARAMS_FLAGS_ETH_CHECK_MC_LB;

	ret = FUNC1(priv->mdev->dev, qp->qpn,
			     MLX4_UPDATE_QP_ETH_SRC_CHECK_MC_LB,
			     &qp_params);

	return ret;
}
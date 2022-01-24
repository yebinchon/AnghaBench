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
struct mlx5e_rq_param {int dummy; } ;
struct mlx5e_cq {int dummy; } ;
struct mlx5e_rq {struct mlx5e_cq cq; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5e_cq_param {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_RQC_STATE_RDY ; 
 int /*<<< orphan*/  MLX5_RQC_STATE_RST ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC1 (struct mlx5_core_dev*,struct mlx5e_cq*,struct mlx5e_cq_param*) ; 
 int FUNC2 (struct mlx5_core_dev*,struct mlx5e_rq*,struct mlx5e_rq_param*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*,struct mlx5e_rq_param*) ; 
 int FUNC4 (struct mlx5e_cq*,struct mlx5e_cq_param*) ; 
 int FUNC5 (struct mlx5e_rq*,struct mlx5e_rq_param*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_cq*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_cq*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_rq*) ; 
 int FUNC9 (struct mlx5e_rq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct mlx5e_priv *priv,
		       struct mlx5e_rq *drop_rq)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	struct mlx5e_cq_param cq_param = {};
	struct mlx5e_rq_param rq_param = {};
	struct mlx5e_cq *cq = &drop_rq->cq;
	int err;

	FUNC3(priv, &rq_param);

	err = FUNC1(mdev, cq, &cq_param);
	if (err)
		return err;

	err = FUNC4(cq, &cq_param);
	if (err)
		goto err_free_cq;

	err = FUNC2(mdev, drop_rq, &rq_param);
	if (err)
		goto err_destroy_cq;

	err = FUNC5(drop_rq, &rq_param);
	if (err)
		goto err_free_rq;

	err = FUNC9(drop_rq, MLX5_RQC_STATE_RST, MLX5_RQC_STATE_RDY);
	if (err)
		FUNC0(priv->mdev, "modify_rq_state failed, rx_if_down_packets won't be counted %d\n", err);

	return 0;

err_free_rq:
	FUNC8(drop_rq);

err_destroy_cq:
	FUNC6(cq);

err_free_cq:
	FUNC7(cq);

	return err;
}
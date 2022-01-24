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
struct xdp_umem {int dummy; } ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_rq_param {int dummy; } ;
struct mlx5e_rq {int dummy; } ;
struct mlx5e_params {scalar_t__ rx_dim_enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct mlx5e_channel {TYPE_1__ rq; scalar_t__ xdp; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5e_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5E_PFLAG_RX_NO_CSUM_COMPLETE ; 
 int /*<<< orphan*/  MLX5E_RQ_STATE_AM ; 
 int /*<<< orphan*/  MLX5E_RQ_STATE_CSUM_FULL ; 
 int /*<<< orphan*/  MLX5E_RQ_STATE_NO_CSUM_COMPLETE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_RQC_STATE_RDY ; 
 int /*<<< orphan*/  MLX5_RQC_STATE_RST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cqe_checksum_full ; 
 int FUNC3 (struct mlx5e_channel*,struct mlx5e_params*,struct mlx5e_xsk_param*,struct xdp_umem*,struct mlx5e_rq_param*,struct mlx5e_rq*) ; 
 int FUNC4 (struct mlx5e_rq*,struct mlx5e_rq_param*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_rq*) ; 
 int FUNC7 (struct mlx5e_rq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct mlx5e_channel *c, struct mlx5e_params *params,
		  struct mlx5e_rq_param *param, struct mlx5e_xsk_param *xsk,
		  struct xdp_umem *umem, struct mlx5e_rq *rq)
{
	int err;

	err = FUNC3(c, params, xsk, umem, param, rq);
	if (err)
		return err;

	err = FUNC4(rq, param);
	if (err)
		goto err_free_rq;

	err = FUNC7(rq, MLX5_RQC_STATE_RST, MLX5_RQC_STATE_RDY);
	if (err)
		goto err_destroy_rq;

	if (FUNC1(c->mdev, cqe_checksum_full))
		FUNC2(MLX5E_RQ_STATE_CSUM_FULL, &c->rq.state);

	if (params->rx_dim_enabled)
		FUNC2(MLX5E_RQ_STATE_AM, &c->rq.state);

	/* We disable csum_complete when XDP is enabled since
	 * XDP programs might manipulate packets which will render
	 * skb->checksum incorrect.
	 */
	if (FUNC0(params, MLX5E_PFLAG_RX_NO_CSUM_COMPLETE) || c->xdp)
		FUNC2(MLX5E_RQ_STATE_NO_CSUM_COMPLETE, &c->rq.state);

	return 0;

err_destroy_rq:
	FUNC5(rq);
err_free_rq:
	FUNC6(rq);

	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xdp_umem {int dummy; } ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
struct dim_cq_moder {int dummy; } ;
struct mlx5e_params {struct dim_cq_moder tx_cq_moderation; struct dim_cq_moder rx_cq_moderation; } ;
struct mlx5e_channel_param {int /*<<< orphan*/  icosq; int /*<<< orphan*/  icosq_cq; int /*<<< orphan*/  xdp_sq; int /*<<< orphan*/  tx_cq; int /*<<< orphan*/  rq; int /*<<< orphan*/  rx_cq; } ;
struct TYPE_7__ {int /*<<< orphan*/  cq; } ;
struct TYPE_6__ {int /*<<< orphan*/  cq; } ;
struct TYPE_8__ {int /*<<< orphan*/  cq; } ;
struct mlx5e_channel {TYPE_2__ xskrq; TYPE_1__ xsksq; TYPE_3__ xskicosq; int /*<<< orphan*/  state; int /*<<< orphan*/  xskicosq_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5E_CHANNEL_STATE_XSK ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_channel_param*) ; 
 struct mlx5e_channel_param* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,struct mlx5e_params*,struct mlx5e_xsk_param*,struct mlx5e_channel_param*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct mlx5e_channel*,struct dim_cq_moder,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mlx5e_channel*,struct mlx5e_params*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC8 (struct mlx5e_channel*,struct mlx5e_params*,int /*<<< orphan*/ *,struct mlx5e_xsk_param*,struct xdp_umem*,TYPE_2__*) ; 
 int FUNC9 (struct mlx5e_channel*,struct mlx5e_params*,int /*<<< orphan*/ *,struct xdp_umem*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5e_params*,struct mlx5e_xsk_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct mlx5e_priv *priv, struct mlx5e_params *params,
		   struct mlx5e_xsk_param *xsk, struct xdp_umem *umem,
		   struct mlx5e_channel *c)
{
	struct mlx5e_channel_param *cparam;
	struct dim_cq_moder icocq_moder = {};
	int err;

	if (!FUNC10(params, xsk, priv->mdev))
		return -EINVAL;

	cparam = FUNC1(sizeof(*cparam), GFP_KERNEL);
	if (!cparam)
		return -ENOMEM;

	FUNC2(priv, params, xsk, cparam);

	err = FUNC6(c, params->rx_cq_moderation, &cparam->rx_cq, &c->xskrq.cq);
	if (FUNC13(err))
		goto err_free_cparam;

	err = FUNC8(c, params, &cparam->rq, xsk, umem, &c->xskrq);
	if (FUNC13(err))
		goto err_close_rx_cq;

	err = FUNC6(c, params->tx_cq_moderation, &cparam->tx_cq, &c->xsksq.cq);
	if (FUNC13(err))
		goto err_close_rq;

	/* Create a separate SQ, so that when the UMEM is disabled, we could
	 * close this SQ safely and stop receiving CQEs. In other case, e.g., if
	 * the XDPSQ was used instead, we might run into trouble when the UMEM
	 * is disabled and then reenabled, but the SQ continues receiving CQEs
	 * from the old UMEM.
	 */
	err = FUNC9(c, params, &cparam->xdp_sq, umem, &c->xsksq, true);
	if (FUNC13(err))
		goto err_close_tx_cq;

	err = FUNC6(c, icocq_moder, &cparam->icosq_cq, &c->xskicosq.cq);
	if (FUNC13(err))
		goto err_close_sq;

	/* Create a dedicated SQ for posting NOPs whenever we need an IRQ to be
	 * triggered and NAPI to be called on the correct CPU.
	 */
	err = FUNC7(c, params, &cparam->icosq, &c->xskicosq);
	if (FUNC13(err))
		goto err_close_icocq;

	FUNC0(cparam);

	FUNC12(&c->xskicosq_lock);

	FUNC11(MLX5E_CHANNEL_STATE_XSK, c->state);

	return 0;

err_close_icocq:
	FUNC3(&c->xskicosq.cq);

err_close_sq:
	FUNC5(&c->xsksq);

err_close_tx_cq:
	FUNC3(&c->xsksq.cq);

err_close_rq:
	FUNC4(&c->xskrq);

err_close_rx_cq:
	FUNC3(&c->xskrq.cq);

err_free_cparam:
	FUNC0(cparam);

	return err;
}
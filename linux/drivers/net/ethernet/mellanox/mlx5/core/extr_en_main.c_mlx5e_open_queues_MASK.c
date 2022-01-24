#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dim_cq_moder {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct mlx5e_params {struct dim_cq_moder tx_cq_moderation; struct dim_cq_moder rx_cq_moderation; } ;
struct mlx5e_channel_param {int /*<<< orphan*/  xdp_sq; int /*<<< orphan*/  rq; int /*<<< orphan*/  icosq; int /*<<< orphan*/  tx_cq; int /*<<< orphan*/  rx_cq; int /*<<< orphan*/  icosq_cq; } ;
struct TYPE_9__ {int /*<<< orphan*/  cq; } ;
struct TYPE_7__ {int /*<<< orphan*/  cq; } ;
struct TYPE_8__ {int /*<<< orphan*/  cq; } ;
struct mlx5e_channel {TYPE_3__ icosq; TYPE_1__ xdpsq; TYPE_2__ rq; TYPE_1__ rq_xdpsq; scalar_t__ xdp; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct mlx5e_channel*,struct dim_cq_moder,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mlx5e_channel*,struct mlx5e_params*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC8 (struct mlx5e_channel*,struct mlx5e_params*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC9 (struct mlx5e_channel*,struct mlx5e_params*,struct mlx5e_channel_param*) ; 
 int FUNC10 (struct mlx5e_channel*,struct mlx5e_params*,struct mlx5e_channel_param*) ; 
 int FUNC11 (struct mlx5e_channel*,struct mlx5e_params*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct mlx5e_channel *c,
			     struct mlx5e_params *params,
			     struct mlx5e_channel_param *cparam)
{
	struct dim_cq_moder icocq_moder = {0, 0};
	int err;

	err = FUNC6(c, icocq_moder, &cparam->icosq_cq, &c->icosq.cq);
	if (err)
		return err;

	err = FUNC10(c, params, cparam);
	if (err)
		goto err_close_icosq_cq;

	err = FUNC6(c, params->tx_cq_moderation, &cparam->tx_cq, &c->xdpsq.cq);
	if (err)
		goto err_close_tx_cqs;

	err = FUNC6(c, params->rx_cq_moderation, &cparam->rx_cq, &c->rq.cq);
	if (err)
		goto err_close_xdp_tx_cqs;

	/* XDP SQ CQ params are same as normal TXQ sq CQ params */
	err = c->xdp ? FUNC6(c, params->tx_cq_moderation,
				     &cparam->tx_cq, &c->rq_xdpsq.cq) : 0;
	if (err)
		goto err_close_rx_cq;

	FUNC13(&c->napi);

	err = FUNC7(c, params, &cparam->icosq, &c->icosq);
	if (err)
		goto err_disable_napi;

	err = FUNC9(c, params, cparam);
	if (err)
		goto err_close_icosq;

	if (c->xdp) {
		err = FUNC11(c, params, &cparam->xdp_sq, NULL,
				       &c->rq_xdpsq, false);
		if (err)
			goto err_close_sqs;
	}

	err = FUNC8(c, params, &cparam->rq, NULL, NULL, &c->rq);
	if (err)
		goto err_close_xdp_sq;

	err = FUNC11(c, params, &cparam->xdp_sq, NULL, &c->xdpsq, true);
	if (err)
		goto err_close_rq;

	return 0;

err_close_rq:
	FUNC2(&c->rq);

err_close_xdp_sq:
	if (c->xdp)
		FUNC5(&c->rq_xdpsq);

err_close_sqs:
	FUNC3(c);

err_close_icosq:
	FUNC1(&c->icosq);

err_disable_napi:
	FUNC12(&c->napi);

	if (c->xdp)
		FUNC0(&c->rq_xdpsq.cq);

err_close_rx_cq:
	FUNC0(&c->rq.cq);

err_close_xdp_tx_cqs:
	FUNC0(&c->xdpsq.cq);

err_close_tx_cqs:
	FUNC4(c);

err_close_icosq_cq:
	FUNC0(&c->icosq.cq);

	return err;
}
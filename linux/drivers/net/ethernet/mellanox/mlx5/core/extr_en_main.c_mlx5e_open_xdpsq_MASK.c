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
struct xdp_umem {int dummy; } ;
struct TYPE_9__ {struct mlx5e_xdp_wqe_info* wqe_info; } ;
struct TYPE_7__ {int /*<<< orphan*/  cqn; } ;
struct TYPE_8__ {TYPE_2__ mcq; } ;
struct mlx5e_xdpsq {scalar_t__ min_inline_mode; int sqn; int /*<<< orphan*/  state; int /*<<< orphan*/  mkey_be; int /*<<< orphan*/  wq; TYPE_4__ db; int /*<<< orphan*/  wq_ctrl; TYPE_3__ cq; } ;
struct mlx5e_xdp_wqe_info {int num_wqebbs; int num_pkts; } ;
struct TYPE_10__ {int /*<<< orphan*/  sz; } ;
struct mlx5_wqe_eth_seg {TYPE_5__ inline_hdr; } ;
struct mlx5_wqe_ctrl_seg {int /*<<< orphan*/  qpn_ds; } ;
struct mlx5e_tx_wqe {struct mlx5_wqe_eth_seg eth; struct mlx5_wqe_ctrl_seg ctrl; } ;
struct mlx5e_sq_param {int /*<<< orphan*/  is_mpw; } ;
struct mlx5e_params {int dummy; } ;
struct mlx5e_create_sq_param {int tis_lst_sz; scalar_t__ min_inline_mode; int /*<<< orphan*/ * wq_ctrl; int /*<<< orphan*/  cqn; int /*<<< orphan*/  tisn; } ;
struct mlx5e_channel {size_t lag_port; int /*<<< orphan*/  mdev; TYPE_1__* priv; } ;
struct mlx5_wqe_data_seg {int /*<<< orphan*/  lkey; } ;
struct TYPE_6__ {int /*<<< orphan*/ ** tisn; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_SQ_STATE_ENABLED ; 
 unsigned int MLX5E_XDP_MIN_INLINE ; 
 unsigned int MLX5E_XDP_TX_DS_COUNT ; 
 scalar_t__ MLX5_INLINE_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct mlx5e_tx_wqe* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct mlx5e_channel*,struct mlx5e_params*,struct xdp_umem*,struct mlx5e_sq_param*,struct mlx5e_xdpsq*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct mlx5e_sq_param*,struct mlx5e_create_sq_param*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_xdpsq*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_xdpsq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct mlx5e_channel *c, struct mlx5e_params *params,
		     struct mlx5e_sq_param *param, struct xdp_umem *umem,
		     struct mlx5e_xdpsq *sq, bool is_redirect)
{
	struct mlx5e_create_sq_param csp = {};
	int err;

	err = FUNC5(c, params, umem, param, sq, is_redirect);
	if (err)
		return err;

	csp.tis_lst_sz      = 1;
	csp.tisn            = c->priv->tisn[c->lag_port][0]; /* tc = 0 */
	csp.cqn             = sq->cq.mcq.cqn;
	csp.wq_ctrl         = &sq->wq_ctrl;
	csp.min_inline_mode = sq->min_inline_mode;
	FUNC9(MLX5E_SQ_STATE_ENABLED, &sq->state);
	err = FUNC6(c->mdev, param, &csp, &sq->sqn);
	if (err)
		goto err_free_xdpsq;

	FUNC8(sq, param->is_mpw);

	if (!param->is_mpw) {
		unsigned int ds_cnt = MLX5E_XDP_TX_DS_COUNT;
		unsigned int inline_hdr_sz = 0;
		int i;

		if (sq->min_inline_mode != MLX5_INLINE_MODE_NONE) {
			inline_hdr_sz = MLX5E_XDP_MIN_INLINE;
			ds_cnt++;
		}

		/* Pre initialize fixed WQE fields */
		for (i = 0; i < FUNC3(&sq->wq); i++) {
			struct mlx5e_xdp_wqe_info *wi  = &sq->db.wqe_info[i];
			struct mlx5e_tx_wqe      *wqe  = FUNC4(&sq->wq, i);
			struct mlx5_wqe_ctrl_seg *cseg = &wqe->ctrl;
			struct mlx5_wqe_eth_seg  *eseg = &wqe->eth;
			struct mlx5_wqe_data_seg *dseg;

			cseg->qpn_ds = FUNC2((sq->sqn << 8) | ds_cnt);
			eseg->inline_hdr.sz = FUNC1(inline_hdr_sz);

			dseg = (struct mlx5_wqe_data_seg *)cseg + (ds_cnt - 1);
			dseg->lkey = sq->mkey_be;

			wi->num_wqebbs = 1;
			wi->num_pkts   = 1;
		}
	}

	return 0;

err_free_xdpsq:
	FUNC0(MLX5E_SQ_STATE_ENABLED, &sq->state);
	FUNC7(sq);

	return err;
}
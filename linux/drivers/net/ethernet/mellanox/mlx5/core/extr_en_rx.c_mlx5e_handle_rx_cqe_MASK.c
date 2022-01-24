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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct mlx5e_wqe_frag_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  napi; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  skb_from_cqe; struct mlx5_wq_cyc wq; } ;
struct mlx5e_rq {TYPE_3__ cq; int /*<<< orphan*/  flags; TYPE_2__ wqe; TYPE_1__* stats; } ;
struct mlx5_cqe64 {int /*<<< orphan*/  byte_cnt; int /*<<< orphan*/  wqe_counter; } ;
struct TYPE_4__ {int /*<<< orphan*/  wqe_err; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5e_rq*,struct mlx5_cqe64*,struct mlx5e_wqe_frag_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5E_RQ_FLAG_XDP_XMIT ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_cqe64*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mlx5e_wqe_frag_info* FUNC5 (struct mlx5e_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_wq_cyc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_wq_cyc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_rq*,struct mlx5_cqe64*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5e_rq*,struct mlx5e_wqe_frag_info*,int) ; 
 int /*<<< orphan*/  mlx5e_skb_from_cqe_linear ; 
 int /*<<< orphan*/  mlx5e_skb_from_cqe_nonlinear ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5e_rq*,struct mlx5_cqe64*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct mlx5e_rq *rq, struct mlx5_cqe64 *cqe)
{
	struct mlx5_wq_cyc *wq = &rq->wqe.wq;
	struct mlx5e_wqe_frag_info *wi;
	struct sk_buff *skb;
	u32 cqe_bcnt;
	u16 ci;

	ci       = FUNC6(wq, FUNC3(cqe->wqe_counter));
	wi       = FUNC5(rq, ci);
	cqe_bcnt = FUNC4(cqe->byte_cnt);

	if (FUNC12(FUNC1(cqe))) {
		FUNC11(rq, cqe);
		rq->stats->wqe_err++;
		goto free_wqe;
	}

	skb = FUNC0(rq->wqe.skb_from_cqe,
			      mlx5e_skb_from_cqe_linear,
			      mlx5e_skb_from_cqe_nonlinear,
			      rq, cqe, wi, cqe_bcnt);
	if (!skb) {
		/* probably for XDP */
		if (FUNC2(MLX5E_RQ_FLAG_XDP_XMIT, rq->flags)) {
			/* do not return page to cache,
			 * it will be returned on XDP_TX completion.
			 */
			goto wq_cyc_pop;
		}
		goto free_wqe;
	}

	FUNC8(rq, cqe, cqe_bcnt, skb);
	FUNC10(rq->cq.napi, skb);

free_wqe:
	FUNC9(rq, wi, true);
wq_cyc_pop:
	FUNC7(wq);
}
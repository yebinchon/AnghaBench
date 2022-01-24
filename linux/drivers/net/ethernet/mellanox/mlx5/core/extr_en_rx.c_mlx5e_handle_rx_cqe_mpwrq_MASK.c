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
typedef  int u32 ;
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  next_wqe_index; } ;
struct mlx5e_rx_wqe_ll {TYPE_3__ next; } ;
struct mlx5e_rq_stats {int /*<<< orphan*/  mpwqe_filler_strides; int /*<<< orphan*/  mpwqe_filler_cqes; int /*<<< orphan*/  wqe_err; } ;
struct mlx5_wq_ll {int dummy; } ;
struct TYPE_5__ {size_t log_stride_sz; scalar_t__ num_strides; struct mlx5_wq_ll wq; int /*<<< orphan*/  skb_from_cqe_mpwrq; struct mlx5e_mpw_info* info; } ;
struct TYPE_4__ {int /*<<< orphan*/  napi; } ;
struct mlx5e_rq {TYPE_2__ mpwqe; TYPE_1__ cq; struct mlx5e_rq_stats* stats; } ;
struct mlx5e_mpw_info {size_t consumed_strides; } ;
struct mlx5_cqe64 {int /*<<< orphan*/  wqe_id; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5e_rq*,struct mlx5e_mpw_info*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_cqe64*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 struct mlx5e_rx_wqe_ll* FUNC4 (struct mlx5_wq_ll*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_wq_ll*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_rq*,struct mlx5_cqe64*,size_t,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_rq*,struct mlx5e_mpw_info*,int) ; 
 int /*<<< orphan*/  mlx5e_skb_from_cqe_mpwrq_linear ; 
 int /*<<< orphan*/  mlx5e_skb_from_cqe_mpwrq_nonlinear ; 
 size_t FUNC8 (struct mlx5_cqe64*) ; 
 size_t FUNC9 (struct mlx5_cqe64*) ; 
 size_t FUNC10 (struct mlx5_cqe64*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_cqe64*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5e_rq*,struct mlx5_cqe64*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

void FUNC15(struct mlx5e_rq *rq, struct mlx5_cqe64 *cqe)
{
	u16 cstrides       = FUNC9(cqe);
	u16 wqe_id         = FUNC2(cqe->wqe_id);
	struct mlx5e_mpw_info *wi = &rq->mpwqe.info[wqe_id];
	u16 stride_ix      = FUNC10(cqe);
	u32 wqe_offset     = stride_ix << rq->mpwqe.log_stride_sz;
	u32 head_offset    = wqe_offset & (PAGE_SIZE - 1);
	u32 page_idx       = wqe_offset >> PAGE_SHIFT;
	struct mlx5e_rx_wqe_ll *wqe;
	struct mlx5_wq_ll *wq;
	struct sk_buff *skb;
	u16 cqe_bcnt;

	wi->consumed_strides += cstrides;

	if (FUNC14(FUNC1(cqe))) {
		FUNC13(rq, cqe);
		rq->stats->wqe_err++;
		goto mpwrq_cqe_out;
	}

	if (FUNC14(FUNC11(cqe))) {
		struct mlx5e_rq_stats *stats = rq->stats;

		stats->mpwqe_filler_cqes++;
		stats->mpwqe_filler_strides += cstrides;
		goto mpwrq_cqe_out;
	}

	cqe_bcnt = FUNC8(cqe);

	skb = FUNC0(rq->mpwqe.skb_from_cqe_mpwrq,
			      mlx5e_skb_from_cqe_mpwrq_linear,
			      mlx5e_skb_from_cqe_mpwrq_nonlinear,
			      rq, wi, cqe_bcnt, head_offset, page_idx);
	if (!skb)
		goto mpwrq_cqe_out;

	FUNC6(rq, cqe, cqe_bcnt, skb);
	FUNC12(rq->cq.napi, skb);

mpwrq_cqe_out:
	if (FUNC3(wi->consumed_strides < rq->mpwqe.num_strides))
		return;

	wq  = &rq->mpwqe.wq;
	wqe = FUNC4(wq, wqe_id);
	FUNC7(rq, wi, true);
	FUNC5(wq, cqe->wqe_id, &wqe->next.next_wqe_index);
}
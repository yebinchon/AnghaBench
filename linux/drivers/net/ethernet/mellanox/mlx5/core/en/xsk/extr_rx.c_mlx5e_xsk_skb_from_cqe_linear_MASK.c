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
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct mlx5e_wqe_frag_info {int /*<<< orphan*/  offset; struct mlx5e_dma_info* di; } ;
struct TYPE_5__ {int headroom; int umem_headroom; } ;
struct mlx5e_rq {TYPE_3__* stats; int /*<<< orphan*/  pdev; TYPE_2__ buff; } ;
struct TYPE_4__ {void* data; } ;
struct mlx5e_dma_info {int /*<<< orphan*/  addr; TYPE_1__ xsk; } ;
struct mlx5_cqe64 {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  wqe_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 scalar_t__ MLX5_CQE_RESP_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_cqe64*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct mlx5e_rq*,struct mlx5e_dma_info*,void*,int*,int*,int) ; 
 struct sk_buff* FUNC5 (struct mlx5e_rq*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 

struct sk_buff *FUNC10(struct mlx5e_rq *rq,
					      struct mlx5_cqe64 *cqe,
					      struct mlx5e_wqe_frag_info *wi,
					      u32 cqe_bcnt)
{
	struct mlx5e_dma_info *di = wi->di;
	u16 rx_headroom = rq->buff.headroom - rq->buff.umem_headroom;
	void *va, *data;
	bool consumed;
	u32 frag_size;

	/* wi->offset is not used in this function, because di->xsk.data and
	 * di->addr point directly to the necessary place. Furthermore, in the
	 * current implementation, one page = one packet = one frame, so
	 * wi->offset should always be 0.
	 */
	FUNC0(wi->offset);

	va             = di->xsk.data;
	data           = va + rx_headroom;
	frag_size      = rq->buff.headroom + cqe_bcnt;

	FUNC1(rq->pdev, di->addr, frag_size, DMA_BIDIRECTIONAL);
	FUNC6(data);

	if (FUNC9(FUNC2(cqe) != MLX5_CQE_RESP_SEND)) {
		rq->stats->wqe_err++;
		return NULL;
	}

	FUNC7();
	consumed = FUNC4(rq, di, va, &rx_headroom, &cqe_bcnt, true);
	FUNC8();

	if (FUNC3(consumed))
		return NULL; /* page/packet was consumed by XDP */

	/* XDP_PASS: copy the data from the UMEM to a new SKB. The frame reuse
	 * will be handled by mlx5e_put_rx_frag.
	 * On SKB allocation failure, NULL is returned.
	 */
	return FUNC5(rq, data, cqe_bcnt);
}
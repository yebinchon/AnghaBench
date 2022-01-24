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
struct TYPE_6__ {int head; int tail; struct mlx5e_dma_info* page_cache; } ;
struct TYPE_5__ {int /*<<< orphan*/  frags; } ;
struct TYPE_4__ {int /*<<< orphan*/  info; } ;
struct mlx5e_rq {int wq_type; int /*<<< orphan*/  wq_ctrl; int /*<<< orphan*/  page_pool; int /*<<< orphan*/  xdp_rxq; TYPE_3__ page_cache; TYPE_2__ wqe; int /*<<< orphan*/  umr_mkey; int /*<<< orphan*/  mdev; TYPE_1__ mpwqe; scalar_t__ xdp_prog; } ;
struct mlx5e_dma_info {int dummy; } ;

/* Variables and functions */
 int MLX5E_CACHE_SIZE ; 
#define  MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_rq*,struct mlx5e_dma_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mlx5e_rq *rq)
{
	int i;

	if (rq->xdp_prog)
		FUNC0(rq->xdp_prog);

	switch (rq->wq_type) {
	case MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ:
		FUNC1(rq->mpwqe.info);
		FUNC2(rq->mdev, &rq->umr_mkey);
		break;
	default: /* MLX5_WQ_TYPE_CYCLIC */
		FUNC1(rq->wqe.frags);
		FUNC4(rq);
	}

	for (i = rq->page_cache.head; i != rq->page_cache.tail;
	     i = (i + 1) & (MLX5E_CACHE_SIZE - 1)) {
		struct mlx5e_dma_info *dma_info = &rq->page_cache.page_cache[i];

		/* With AF_XDP, page_cache is not used, so this loop is not
		 * entered, and it's safe to call mlx5e_page_release_dynamic
		 * directly.
		 */
		FUNC5(rq, dma_info, false);
	}

	FUNC7(&rq->xdp_rxq);
	FUNC6(rq->page_pool);
	FUNC3(&rq->wq_ctrl);
}
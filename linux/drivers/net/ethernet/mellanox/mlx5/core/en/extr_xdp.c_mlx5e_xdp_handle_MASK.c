#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct xdp_umem {int dummy; } ;
struct xdp_buff {void* data; void* data_end; void* data_hard_start; int /*<<< orphan*/  handle; int /*<<< orphan*/ * rxq; } ;
struct mlx5e_rq {TYPE_2__* stats; int /*<<< orphan*/  netdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  xdpsq; int /*<<< orphan*/  xdp_rxq; struct xdp_umem* umem; int /*<<< orphan*/  xdp_prog; } ;
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;
struct mlx5e_dma_info {TYPE_1__ xsk; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  xdp_drop; int /*<<< orphan*/  xdp_redirect; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_RQ_FLAG_XDP_REDIRECT ; 
 int /*<<< orphan*/  MLX5E_RQ_FLAG_XDP_XMIT ; 
 struct bpf_prog* FUNC0 (int /*<<< orphan*/ ) ; 
#define  XDP_ABORTED 132 
#define  XDP_DROP 131 
#define  XDP_PASS 130 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_rq*,struct mlx5e_dma_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mlx5e_rq*,struct mlx5e_dma_info*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct xdp_buff*,struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC9 (struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct xdp_umem*,int /*<<< orphan*/ ,int) ; 

bool FUNC11(struct mlx5e_rq *rq, struct mlx5e_dma_info *di,
		      void *va, u16 *rx_headroom, u32 *len, bool xsk)
{
	struct bpf_prog *prog = FUNC0(rq->xdp_prog);
	struct xdp_umem *umem = rq->umem;
	struct xdp_buff xdp;
	u32 act;
	int err;

	if (!prog)
		return false;

	xdp.data = va + *rx_headroom;
	FUNC9(&xdp);
	xdp.data_end = xdp.data + *len;
	xdp.data_hard_start = va;
	if (xsk)
		xdp.handle = di->xsk.handle;
	xdp.rxq = &rq->xdp_rxq;

	act = FUNC2(prog, &xdp);
	if (xsk) {
		u64 off = xdp.data - xdp.data_hard_start;

		xdp.handle = FUNC10(umem, xdp.handle, off);
	}
	switch (act) {
	case XDP_PASS:
		*rx_headroom = xdp.data - xdp.data_hard_start;
		*len = xdp.data_end - xdp.data;
		return false;
	case XDP_TX:
		if (FUNC7(!FUNC5(rq->xdpsq, rq, di, &xdp)))
			goto xdp_abort;
		FUNC1(MLX5E_RQ_FLAG_XDP_XMIT, rq->flags); /* non-atomic */
		return true;
	case XDP_REDIRECT:
		/* When XDP enabled then page-refcnt==1 here */
		err = FUNC8(rq->netdev, &xdp, prog);
		if (FUNC7(err))
			goto xdp_abort;
		FUNC1(MLX5E_RQ_FLAG_XDP_XMIT, rq->flags);
		FUNC1(MLX5E_RQ_FLAG_XDP_REDIRECT, rq->flags);
		if (!xsk)
			FUNC4(rq, di);
		rq->stats->xdp_redirect++;
		return true;
	default:
		FUNC3(act);
		/* fall through */
	case XDP_ABORTED:
xdp_abort:
		FUNC6(rq->netdev, prog, act);
		/* fall through */
	case XDP_DROP:
		rq->stats->xdp_drop++;
		return true;
	}
}
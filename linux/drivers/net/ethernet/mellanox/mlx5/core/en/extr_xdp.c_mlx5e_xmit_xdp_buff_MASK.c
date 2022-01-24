#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xdp_frame {void* data; int /*<<< orphan*/  len; } ;
struct xdp_buff {TYPE_2__* rxq; } ;
struct mlx5e_xdpsq {int (* xmit_xdp_frame ) (struct mlx5e_xdpsq*,struct mlx5e_xdp_xmit_data*,struct mlx5e_xdp_info*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  pdev; } ;
struct mlx5e_xdp_xmit_data {void* data; void* dma_addr; int /*<<< orphan*/  len; } ;
struct mlx5e_dma_info {int addr; } ;
struct TYPE_8__ {struct mlx5e_dma_info di; struct mlx5e_rq* rq; } ;
struct TYPE_7__ {void* dma_addr; struct xdp_frame* xdpf; } ;
struct mlx5e_xdp_info {TYPE_4__ page; int /*<<< orphan*/  mode; TYPE_3__ frame; } ;
struct mlx5e_rq {int /*<<< orphan*/  flags; } ;
typedef  void* dma_addr_t ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ MEM_TYPE_ZERO_COPY ; 
 int /*<<< orphan*/  MLX5E_RQ_FLAG_XDP_XMIT ; 
 int /*<<< orphan*/  MLX5E_XDP_XMIT_MODE_FRAME ; 
 int /*<<< orphan*/  MLX5E_XDP_XMIT_MODE_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xdp_frame* FUNC1 (struct xdp_buff*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5e_xdpsq*,struct mlx5e_xdp_xmit_data*,struct mlx5e_xdp_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct xdp_frame*) ; 

__attribute__((used)) static inline bool
FUNC8(struct mlx5e_xdpsq *sq, struct mlx5e_rq *rq,
		    struct mlx5e_dma_info *di, struct xdp_buff *xdp)
{
	struct mlx5e_xdp_xmit_data xdptxd;
	struct mlx5e_xdp_info xdpi;
	struct xdp_frame *xdpf;
	dma_addr_t dma_addr;

	xdpf = FUNC1(xdp);
	if (FUNC6(!xdpf))
		return false;

	xdptxd.data = xdpf->data;
	xdptxd.len  = xdpf->len;

	if (xdp->rxq->mem.type == MEM_TYPE_ZERO_COPY) {
		/* The xdp_buff was in the UMEM and was copied into a newly
		 * allocated page. The UMEM page was returned via the ZCA, and
		 * this new page has to be mapped at this point and has to be
		 * unmapped and returned via xdp_return_frame on completion.
		 */

		/* Prevent double recycling of the UMEM page. Even in case this
		 * function returns false, the xdp_buff shouldn't be recycled,
		 * as it was already done in xdp_convert_zc_to_xdp_frame.
		 */
		FUNC0(MLX5E_RQ_FLAG_XDP_XMIT, rq->flags); /* non-atomic */

		xdpi.mode = MLX5E_XDP_XMIT_MODE_FRAME;

		dma_addr = FUNC2(sq->pdev, xdptxd.data, xdptxd.len,
					  DMA_TO_DEVICE);
		if (FUNC3(sq->pdev, dma_addr)) {
			FUNC7(xdpf);
			return false;
		}

		xdptxd.dma_addr     = dma_addr;
		xdpi.frame.xdpf     = xdpf;
		xdpi.frame.dma_addr = dma_addr;
	} else {
		/* Driver assumes that convert_to_xdp_frame returns an xdp_frame
		 * that points to the same memory region as the original
		 * xdp_buff. It allows to map the memory only once and to use
		 * the DMA_BIDIRECTIONAL mode.
		 */

		xdpi.mode = MLX5E_XDP_XMIT_MODE_PAGE;

		dma_addr = di->addr + (xdpf->data - (void *)xdpf);
		FUNC4(sq->pdev, dma_addr, xdptxd.len,
					   DMA_TO_DEVICE);

		xdptxd.dma_addr = dma_addr;
		xdpi.page.rq    = rq;
		xdpi.page.di    = *di;
	}

	return sq->xmit_xdp_frame(sq, &xdptxd, &xdpi, 0);
}
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
typedef  int u8 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct mlx5e_txqsq {int /*<<< orphan*/  mkey_be; int /*<<< orphan*/  pdev; } ;
struct mlx5_wqe_data_seg {void* byte_count; int /*<<< orphan*/  lkey; void* addr; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MLX5E_DMA_MAP_PAGE ; 
 int /*<<< orphan*/  MLX5E_DMA_MAP_SINGLE ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_txqsq*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_txqsq*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC10(struct mlx5e_txqsq *sq, struct sk_buff *skb,
			unsigned char *skb_data, u16 headlen,
			struct mlx5_wqe_data_seg *dseg)
{
	dma_addr_t dma_addr = 0;
	u8 num_dma          = 0;
	int i;

	if (headlen) {
		dma_addr = FUNC2(sq->pdev, skb_data, headlen,
					  DMA_TO_DEVICE);
		if (FUNC9(FUNC3(sq->pdev, dma_addr)))
			goto dma_unmap_wqe_err;

		dseg->addr       = FUNC1(dma_addr);
		dseg->lkey       = sq->mkey_be;
		dseg->byte_count = FUNC0(headlen);

		FUNC4(sq, dma_addr, headlen, MLX5E_DMA_MAP_SINGLE);
		num_dma++;
		dseg++;
	}

	for (i = 0; i < FUNC8(skb)->nr_frags; i++) {
		skb_frag_t *frag = &FUNC8(skb)->frags[i];
		int fsz = FUNC7(frag);

		dma_addr = FUNC6(sq->pdev, frag, 0, fsz,
					    DMA_TO_DEVICE);
		if (FUNC9(FUNC3(sq->pdev, dma_addr)))
			goto dma_unmap_wqe_err;

		dseg->addr       = FUNC1(dma_addr);
		dseg->lkey       = sq->mkey_be;
		dseg->byte_count = FUNC0(fsz);

		FUNC4(sq, dma_addr, fsz, MLX5E_DMA_MAP_PAGE);
		num_dma++;
		dseg++;
	}

	return num_dma;

dma_unmap_wqe_err:
	FUNC5(sq, num_dma);
	return -ENOMEM;
}
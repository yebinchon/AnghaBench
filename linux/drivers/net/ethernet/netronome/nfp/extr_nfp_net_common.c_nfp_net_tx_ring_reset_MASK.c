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
struct sk_buff {int dummy; } ;
struct nfp_net_tx_ring {scalar_t__ rd_p; scalar_t__ wr_p; int /*<<< orphan*/  idx; scalar_t__ is_xdp; scalar_t__ wr_ptr_add; scalar_t__ qcp_rd_p; int /*<<< orphan*/  size; int /*<<< orphan*/  txds; struct nfp_net_tx_buf* txbufs; } ;
struct nfp_net_tx_buf {int fidx; struct sk_buff* skb; scalar_t__ dma_addr; } ;
struct nfp_net_dp {int /*<<< orphan*/  netdev; int /*<<< orphan*/  dev; } ;
struct netdev_queue {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int FUNC0 (struct nfp_net_tx_ring*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 TYPE_1__* FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC10(struct nfp_net_dp *dp, struct nfp_net_tx_ring *tx_ring)
{
	const skb_frag_t *frag;
	struct netdev_queue *nd_q;

	while (!tx_ring->is_xdp && tx_ring->rd_p != tx_ring->wr_p) {
		struct nfp_net_tx_buf *tx_buf;
		struct sk_buff *skb;
		int idx, nr_frags;

		idx = FUNC0(tx_ring, tx_ring->rd_p);
		tx_buf = &tx_ring->txbufs[idx];

		skb = tx_ring->txbufs[idx].skb;
		nr_frags = FUNC9(skb)->nr_frags;

		if (tx_buf->fidx == -1) {
			/* unmap head */
			FUNC3(dp->dev, tx_buf->dma_addr,
					 FUNC8(skb), DMA_TO_DEVICE);
		} else {
			/* unmap fragment */
			frag = &FUNC9(skb)->frags[tx_buf->fidx];
			FUNC2(dp->dev, tx_buf->dma_addr,
				       FUNC7(frag), DMA_TO_DEVICE);
		}

		/* check for last gather fragment */
		if (tx_buf->fidx == nr_frags - 1)
			FUNC1(skb);

		tx_buf->dma_addr = 0;
		tx_buf->skb = NULL;
		tx_buf->fidx = -2;

		tx_ring->qcp_rd_p++;
		tx_ring->rd_p++;
	}

	FUNC4(tx_ring->txds, 0, tx_ring->size);
	tx_ring->wr_p = 0;
	tx_ring->rd_p = 0;
	tx_ring->qcp_rd_p = 0;
	tx_ring->wr_ptr_add = 0;

	if (tx_ring->is_xdp || !dp->netdev)
		return;

	nd_q = FUNC5(dp->netdev, tx_ring->idx);
	FUNC6(nd_q);
}
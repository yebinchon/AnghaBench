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
struct sk_buff {unsigned int len; int /*<<< orphan*/  data; } ;
struct nfp_net_tx_ring {int /*<<< orphan*/  wr_ptr_add; int /*<<< orphan*/  wr_p; struct nfp_net_tx_desc* txds; struct nfp_net_tx_buf* txbufs; } ;
struct nfp_net_tx_desc {unsigned int offset_eop; scalar_t__ lso_hdrlen; scalar_t__ mss; scalar_t__ flags; void* data_len; void* dma_len; } ;
struct nfp_net_tx_buf {int fidx; int pkt_cnt; unsigned int real_len; int /*<<< orphan*/  dma_addr; struct sk_buff* skb; } ;
struct nfp_net_r_vector {int /*<<< orphan*/  tx_sync; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  queue; int /*<<< orphan*/  tx_busy; struct nfp_net_tx_ring* tx_ring; TYPE_1__* nfp_net; } ;
struct nfp_net_dp {int /*<<< orphan*/  dev; } ;
struct nfp_net {int /*<<< orphan*/  app; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  nr_frags; } ;
struct TYPE_3__ {struct nfp_net_dp dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int FUNC0 (struct nfp_net_tx_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFP_META_PORT_ID_CTRL ; 
 int /*<<< orphan*/  NFP_NET_META_PORTID ; 
 unsigned int PCIE_DESC_TX_EOP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nfp_net_tx_desc*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct nfp_net_tx_ring*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nfp_net_tx_ring*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfp_net_dp*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (struct sk_buff*) ; 
 int FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 TYPE_2__* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static bool
FUNC21(struct nfp_net *nn, struct nfp_net_r_vector *r_vec,
		struct sk_buff *skb, bool old)
{
	unsigned int real_len = skb->len, meta_len = 0;
	struct nfp_net_tx_ring *tx_ring;
	struct nfp_net_tx_buf *txbuf;
	struct nfp_net_tx_desc *txd;
	struct nfp_net_dp *dp;
	dma_addr_t dma_addr;
	int wr_idx;

	dp = &r_vec->nfp_net->dp;
	tx_ring = r_vec->tx_ring;

	if (FUNC1(FUNC17(skb)->nr_frags)) {
		FUNC12(dp, "Driver's CTRL TX does not implement gather\n");
		goto err_free;
	}

	if (FUNC20(FUNC10(tx_ring, 1))) {
		FUNC18(&r_vec->tx_sync);
		r_vec->tx_busy++;
		FUNC19(&r_vec->tx_sync);
		if (!old)
			FUNC3(&r_vec->queue, skb);
		else
			FUNC2(&r_vec->queue, skb);
		return true;
	}

	if (FUNC8(nn->app)) {
		if (FUNC20(FUNC15(skb) < 8)) {
			FUNC12(dp, "CTRL TX on skb without headroom\n");
			goto err_free;
		}
		meta_len = 8;
		FUNC13(NFP_META_PORT_ID_CTRL, FUNC16(skb, 4));
		FUNC13(NFP_NET_META_PORTID, FUNC16(skb, 4));
	}

	/* Start with the head skbuf */
	dma_addr = FUNC6(dp->dev, skb->data, FUNC14(skb),
				  DMA_TO_DEVICE);
	if (FUNC7(dp->dev, dma_addr))
		goto err_dma_warn;

	wr_idx = FUNC0(tx_ring, tx_ring->wr_p);

	/* Stash the soft descriptor of the head then initialize it */
	txbuf = &tx_ring->txbufs[wr_idx];
	txbuf->skb = skb;
	txbuf->dma_addr = dma_addr;
	txbuf->fidx = -1;
	txbuf->pkt_cnt = 1;
	txbuf->real_len = real_len;

	/* Build TX descriptor */
	txd = &tx_ring->txds[wr_idx];
	txd->offset_eop = meta_len | PCIE_DESC_TX_EOP;
	txd->dma_len = FUNC4(FUNC14(skb));
	FUNC9(txd, dma_addr);
	txd->data_len = FUNC4(skb->len);

	txd->flags = 0;
	txd->mss = 0;
	txd->lso_hdrlen = 0;

	tx_ring->wr_p++;
	tx_ring->wr_ptr_add++;
	FUNC11(tx_ring);

	return false;

err_dma_warn:
	FUNC12(dp, "Failed to DMA map TX CTRL buffer\n");
err_free:
	FUNC18(&r_vec->tx_sync);
	r_vec->tx_errors++;
	FUNC19(&r_vec->tx_sync);
	FUNC5(skb);
	return false;
}
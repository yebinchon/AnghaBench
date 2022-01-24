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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u16 ;
struct sk_buff {unsigned int len; int /*<<< orphan*/  data; } ;
struct nfp_net_tx_ring {int wr_p; size_t idx; int wr_ptr_add; struct nfp_net_tx_buf* txbufs; scalar_t__ cnt; struct nfp_net_tx_desc* txds; int /*<<< orphan*/  rd_p; struct nfp_net_r_vector* r_vec; } ;
struct nfp_net_tx_desc {int offset_eop; int /*<<< orphan*/ * vals8; void* dma_len; void* vlan; int /*<<< orphan*/  flags; scalar_t__ lso_hdrlen; scalar_t__ mss; void* data_len; } ;
struct nfp_net_tx_buf {int fidx; int pkt_cnt; unsigned int real_len; void* dma_addr; struct sk_buff* skb; } ;
struct nfp_net_r_vector {int /*<<< orphan*/  tx_sync; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_gather; int /*<<< orphan*/  tx_busy; } ;
struct nfp_net_dp {int ctrl; int /*<<< orphan*/  dev; int /*<<< orphan*/  netdev; struct nfp_net_tx_ring* tx_rings; } ;
struct nfp_net {struct nfp_net_dp dp; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  void* dma_addr_t ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int FUNC0 (struct nfp_net_tx_ring*,int) ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int NFP_NET_CFG_CTRL_TXVLAN ; 
 int PCIE_DESC_TX_EOP ; 
 int /*<<< orphan*/  PCIE_DESC_TX_VLAN ; 
 scalar_t__ FUNC1 (struct netdev_queue*,unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC8 (int /*<<< orphan*/ ,size_t) ; 
 struct nfp_net* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfp_net_tx_desc*,void*) ; 
 int FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC14 (struct nfp_net_dp*,struct nfp_net_r_vector*,struct sk_buff*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct nfp_net_dp*,struct nfp_net_r_vector*,struct nfp_net_tx_buf*,struct nfp_net_tx_desc*,struct sk_buff*) ; 
 int FUNC17 (struct nfp_net_tx_ring*,int) ; 
 scalar_t__ FUNC18 (struct nfp_net_tx_ring*) ; 
 int /*<<< orphan*/  FUNC19 (struct netdev_queue*,struct nfp_net_tx_ring*) ; 
 int /*<<< orphan*/  FUNC20 (struct nfp_net_r_vector*,struct nfp_net_tx_buf*,struct nfp_net_tx_desc*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct nfp_net_tx_ring*) ; 
 int /*<<< orphan*/  FUNC22 (struct nfp_net_dp*,char*,...) ; 
 void* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC24 (int /*<<< orphan*/  const*) ; 
 size_t FUNC25 (struct sk_buff*) ; 
 unsigned int FUNC26 (struct sk_buff*) ; 
 TYPE_1__* FUNC27 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*) ; 
 unsigned int FUNC29 (struct sk_buff*) ; 
 scalar_t__ FUNC30 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC33 (int) ; 

__attribute__((used)) static int FUNC34(struct sk_buff *skb, struct net_device *netdev)
{
	struct nfp_net *nn = FUNC9(netdev);
	const skb_frag_t *frag;
	int f, nr_frags, wr_idx, md_bytes;
	struct nfp_net_tx_ring *tx_ring;
	struct nfp_net_r_vector *r_vec;
	struct nfp_net_tx_buf *txbuf;
	struct nfp_net_tx_desc *txd;
	struct netdev_queue *nd_q;
	struct nfp_net_dp *dp;
	dma_addr_t dma_addr;
	unsigned int fsize;
	u64 tls_handle = 0;
	u16 qidx;

	dp = &nn->dp;
	qidx = FUNC25(skb);
	tx_ring = &dp->tx_rings[qidx];
	r_vec = tx_ring->r_vec;

	nr_frags = FUNC27(skb)->nr_frags;

	if (FUNC33(FUNC17(tx_ring, nr_frags + 1))) {
		FUNC22(dp, "TX ring %d busy. wrp=%u rdp=%u\n",
			   qidx, tx_ring->wr_p, tx_ring->rd_p);
		nd_q = FUNC8(dp->netdev, qidx);
		FUNC11(nd_q);
		FUNC21(tx_ring);
		FUNC31(&r_vec->tx_sync);
		r_vec->tx_busy++;
		FUNC32(&r_vec->tx_sync);
		return NETDEV_TX_BUSY;
	}

	skb = FUNC14(dp, r_vec, skb, &tls_handle, &nr_frags);
	if (FUNC33(!skb)) {
		FUNC21(tx_ring);
		return NETDEV_TX_OK;
	}

	md_bytes = FUNC13(skb, tls_handle);
	if (FUNC33(md_bytes < 0))
		goto err_flush;

	/* Start with the head skbuf */
	dma_addr = FUNC4(dp->dev, skb->data, FUNC26(skb),
				  DMA_TO_DEVICE);
	if (FUNC5(dp->dev, dma_addr))
		goto err_dma_err;

	wr_idx = FUNC0(tx_ring, tx_ring->wr_p);

	/* Stash the soft descriptor of the head then initialize it */
	txbuf = &tx_ring->txbufs[wr_idx];
	txbuf->skb = skb;
	txbuf->dma_addr = dma_addr;
	txbuf->fidx = -1;
	txbuf->pkt_cnt = 1;
	txbuf->real_len = skb->len;

	/* Build TX descriptor */
	txd = &tx_ring->txds[wr_idx];
	txd->offset_eop = (nr_frags ? 0 : PCIE_DESC_TX_EOP) | md_bytes;
	txd->dma_len = FUNC2(FUNC26(skb));
	FUNC12(txd, dma_addr);
	txd->data_len = FUNC2(skb->len);

	txd->flags = 0;
	txd->mss = 0;
	txd->lso_hdrlen = 0;

	/* Do not reorder - tso may adjust pkt cnt, vlan may override fields */
	FUNC20(r_vec, txbuf, txd, skb, md_bytes);
	FUNC16(dp, r_vec, txbuf, txd, skb);
	if (FUNC30(skb) && dp->ctrl & NFP_NET_CFG_CTRL_TXVLAN) {
		txd->flags |= PCIE_DESC_TX_VLAN;
		txd->vlan = FUNC2(FUNC29(skb));
	}

	/* Gather DMA */
	if (nr_frags > 0) {
		__le64 second_half;

		/* all descs must match except for in addr, length and eop */
		second_half = txd->vals8[1];

		for (f = 0; f < nr_frags; f++) {
			frag = &FUNC27(skb)->frags[f];
			fsize = FUNC24(frag);

			dma_addr = FUNC23(dp->dev, frag, 0,
						    fsize, DMA_TO_DEVICE);
			if (FUNC5(dp->dev, dma_addr))
				goto err_unmap;

			wr_idx = FUNC0(tx_ring, wr_idx + 1);
			tx_ring->txbufs[wr_idx].skb = skb;
			tx_ring->txbufs[wr_idx].dma_addr = dma_addr;
			tx_ring->txbufs[wr_idx].fidx = f;

			txd = &tx_ring->txds[wr_idx];
			txd->dma_len = FUNC2(fsize);
			FUNC12(txd, dma_addr);
			txd->offset_eop = md_bytes |
				((f == nr_frags - 1) ? PCIE_DESC_TX_EOP : 0);
			txd->vals8[1] = second_half;
		}

		FUNC31(&r_vec->tx_sync);
		r_vec->tx_gather++;
		FUNC32(&r_vec->tx_sync);
	}

	FUNC28(skb);

	nd_q = FUNC8(dp->netdev, tx_ring->idx);

	tx_ring->wr_p += nr_frags + 1;
	if (FUNC18(tx_ring))
		FUNC19(nd_q, tx_ring);

	tx_ring->wr_ptr_add += nr_frags + 1;
	if (FUNC1(nd_q, txbuf->real_len, FUNC10()))
		FUNC21(tx_ring);

	return NETDEV_TX_OK;

err_unmap:
	while (--f >= 0) {
		frag = &FUNC27(skb)->frags[f];
		FUNC6(dp->dev, tx_ring->txbufs[wr_idx].dma_addr,
			       FUNC24(frag), DMA_TO_DEVICE);
		tx_ring->txbufs[wr_idx].skb = NULL;
		tx_ring->txbufs[wr_idx].dma_addr = 0;
		tx_ring->txbufs[wr_idx].fidx = -2;
		wr_idx = wr_idx - 1;
		if (wr_idx < 0)
			wr_idx += tx_ring->cnt;
	}
	FUNC7(dp->dev, tx_ring->txbufs[wr_idx].dma_addr,
			 FUNC26(skb), DMA_TO_DEVICE);
	tx_ring->txbufs[wr_idx].skb = NULL;
	tx_ring->txbufs[wr_idx].dma_addr = 0;
	tx_ring->txbufs[wr_idx].fidx = -2;
err_dma_err:
	FUNC22(dp, "Failed to map DMA TX buffer\n");
err_flush:
	FUNC21(tx_ring);
	FUNC31(&r_vec->tx_sync);
	r_vec->tx_errors++;
	FUNC32(&r_vec->tx_sync);
	FUNC15(skb, tls_handle);
	FUNC3(skb);
	return NETDEV_TX_OK;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nfp_net_tx_ring {int /*<<< orphan*/  wr_ptr_add; int /*<<< orphan*/  wr_p; struct nfp_net_tx_desc* txds; struct nfp_net_tx_buf* txbufs; } ;
struct nfp_net_tx_desc {scalar_t__ lso_hdrlen; scalar_t__ mss; scalar_t__ flags; void* data_len; void* dma_len; int /*<<< orphan*/  offset_eop; } ;
struct nfp_net_tx_buf {int fidx; int pkt_cnt; unsigned int real_len; scalar_t__ dma_addr; int /*<<< orphan*/  frag; } ;
struct nfp_net_rx_ring {int /*<<< orphan*/  r_vec; } ;
struct nfp_net_rx_buf {scalar_t__ dma_addr; int /*<<< orphan*/  frag; } ;
struct nfp_net_dp {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int FUNC0 (struct nfp_net_tx_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIE_DESC_TX_EOP ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net_tx_desc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_net_dp*,int /*<<< orphan*/ ,struct nfp_net_rx_ring*,struct nfp_net_rx_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net_dp*,struct nfp_net_rx_ring*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_net_tx_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_net_tx_ring*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9(struct nfp_net_dp *dp, struct nfp_net_rx_ring *rx_ring,
		   struct nfp_net_tx_ring *tx_ring,
		   struct nfp_net_rx_buf *rxbuf, unsigned int dma_off,
		   unsigned int pkt_len, bool *completed)
{
	struct nfp_net_tx_buf *txbuf;
	struct nfp_net_tx_desc *txd;
	int wr_idx;

	if (FUNC8(FUNC6(tx_ring, 1))) {
		if (!*completed) {
			FUNC7(tx_ring);
			*completed = true;
		}

		if (FUNC8(FUNC6(tx_ring, 1))) {
			FUNC4(dp, rx_ring->r_vec, rx_ring, rxbuf,
					NULL);
			return false;
		}
	}

	wr_idx = FUNC0(tx_ring, tx_ring->wr_p);

	/* Stash the soft descriptor of the head then initialize it */
	txbuf = &tx_ring->txbufs[wr_idx];

	FUNC5(dp, rx_ring, txbuf->frag, txbuf->dma_addr);

	txbuf->frag = rxbuf->frag;
	txbuf->dma_addr = rxbuf->dma_addr;
	txbuf->fidx = -1;
	txbuf->pkt_cnt = 1;
	txbuf->real_len = pkt_len;

	FUNC2(dp->dev, rxbuf->dma_addr + dma_off,
				   pkt_len, DMA_BIDIRECTIONAL);

	/* Build TX descriptor */
	txd = &tx_ring->txds[wr_idx];
	txd->offset_eop = PCIE_DESC_TX_EOP;
	txd->dma_len = FUNC1(pkt_len);
	FUNC3(txd, rxbuf->dma_addr + dma_off);
	txd->data_len = FUNC1(pkt_len);

	txd->flags = 0;
	txd->mss = 0;
	txd->lso_hdrlen = 0;

	tx_ring->wr_p++;
	tx_ring->wr_ptr_add++;
	return true;
}
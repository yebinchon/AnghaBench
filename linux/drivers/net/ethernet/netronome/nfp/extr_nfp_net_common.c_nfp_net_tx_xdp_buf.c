
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_tx_ring {int wr_ptr_add; int wr_p; struct nfp_net_tx_desc* txds; struct nfp_net_tx_buf* txbufs; } ;
struct nfp_net_tx_desc {scalar_t__ lso_hdrlen; scalar_t__ mss; scalar_t__ flags; void* data_len; void* dma_len; int offset_eop; } ;
struct nfp_net_tx_buf {int fidx; int pkt_cnt; unsigned int real_len; scalar_t__ dma_addr; int frag; } ;
struct nfp_net_rx_ring {int r_vec; } ;
struct nfp_net_rx_buf {scalar_t__ dma_addr; int frag; } ;
struct nfp_net_dp {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int D_IDX (struct nfp_net_tx_ring*,int ) ;
 int PCIE_DESC_TX_EOP ;
 void* cpu_to_le16 (unsigned int) ;
 int dma_sync_single_for_device (int ,scalar_t__,unsigned int,int ) ;
 int nfp_desc_set_dma_addr (struct nfp_net_tx_desc*,scalar_t__) ;
 int nfp_net_rx_drop (struct nfp_net_dp*,int ,struct nfp_net_rx_ring*,struct nfp_net_rx_buf*,int *) ;
 int nfp_net_rx_give_one (struct nfp_net_dp*,struct nfp_net_rx_ring*,int ,scalar_t__) ;
 int nfp_net_tx_full (struct nfp_net_tx_ring*,int) ;
 int nfp_net_xdp_complete (struct nfp_net_tx_ring*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool
nfp_net_tx_xdp_buf(struct nfp_net_dp *dp, struct nfp_net_rx_ring *rx_ring,
     struct nfp_net_tx_ring *tx_ring,
     struct nfp_net_rx_buf *rxbuf, unsigned int dma_off,
     unsigned int pkt_len, bool *completed)
{
 struct nfp_net_tx_buf *txbuf;
 struct nfp_net_tx_desc *txd;
 int wr_idx;

 if (unlikely(nfp_net_tx_full(tx_ring, 1))) {
  if (!*completed) {
   nfp_net_xdp_complete(tx_ring);
   *completed = 1;
  }

  if (unlikely(nfp_net_tx_full(tx_ring, 1))) {
   nfp_net_rx_drop(dp, rx_ring->r_vec, rx_ring, rxbuf,
     ((void*)0));
   return 0;
  }
 }

 wr_idx = D_IDX(tx_ring, tx_ring->wr_p);


 txbuf = &tx_ring->txbufs[wr_idx];

 nfp_net_rx_give_one(dp, rx_ring, txbuf->frag, txbuf->dma_addr);

 txbuf->frag = rxbuf->frag;
 txbuf->dma_addr = rxbuf->dma_addr;
 txbuf->fidx = -1;
 txbuf->pkt_cnt = 1;
 txbuf->real_len = pkt_len;

 dma_sync_single_for_device(dp->dev, rxbuf->dma_addr + dma_off,
       pkt_len, DMA_BIDIRECTIONAL);


 txd = &tx_ring->txds[wr_idx];
 txd->offset_eop = PCIE_DESC_TX_EOP;
 txd->dma_len = cpu_to_le16(pkt_len);
 nfp_desc_set_dma_addr(txd, rxbuf->dma_addr + dma_off);
 txd->data_len = cpu_to_le16(pkt_len);

 txd->flags = 0;
 txd->mss = 0;
 txd->lso_hdrlen = 0;

 tx_ring->wr_p++;
 tx_ring->wr_ptr_add++;
 return 1;
}

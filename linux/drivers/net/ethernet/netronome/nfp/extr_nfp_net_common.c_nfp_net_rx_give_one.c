
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfp_net_rx_ring {int wr_p; int qcp_fl; TYPE_2__* rxds; TYPE_1__* rxbufs; } ;
struct nfp_net_dp {scalar_t__ rx_dma_off; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_6__ {scalar_t__ meta_len_dd; scalar_t__ reserved; } ;
struct TYPE_5__ {TYPE_3__ fld; } ;
struct TYPE_4__ {scalar_t__ dma_addr; void* frag; } ;


 unsigned int D_IDX (struct nfp_net_rx_ring*,int) ;
 int NFP_NET_FL_BATCH ;
 int nfp_desc_set_dma_addr (TYPE_3__*,scalar_t__) ;
 int nfp_net_dma_sync_dev_rx (struct nfp_net_dp const*,scalar_t__) ;
 int nfp_qcp_wr_ptr_add (int ,int) ;
 int wmb () ;

__attribute__((used)) static void nfp_net_rx_give_one(const struct nfp_net_dp *dp,
    struct nfp_net_rx_ring *rx_ring,
    void *frag, dma_addr_t dma_addr)
{
 unsigned int wr_idx;

 wr_idx = D_IDX(rx_ring, rx_ring->wr_p);

 nfp_net_dma_sync_dev_rx(dp, dma_addr);


 rx_ring->rxbufs[wr_idx].frag = frag;
 rx_ring->rxbufs[wr_idx].dma_addr = dma_addr;


 rx_ring->rxds[wr_idx].fld.reserved = 0;
 rx_ring->rxds[wr_idx].fld.meta_len_dd = 0;
 nfp_desc_set_dma_addr(&rx_ring->rxds[wr_idx].fld,
         dma_addr + dp->rx_dma_off);

 rx_ring->wr_p++;
 if (!(rx_ring->wr_p % NFP_NET_FL_BATCH)) {



  wmb();
  nfp_qcp_wr_ptr_add(rx_ring->qcp_fl, NFP_NET_FL_BATCH);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_tx_ring {TYPE_1__* r_vec; int cnt; int dma; } ;
struct nfp_net {int dummy; } ;
struct TYPE_2__ {int irq_entry; } ;


 int NFP_NET_CFG_TXR_ADDR (unsigned int) ;
 int NFP_NET_CFG_TXR_SZ (unsigned int) ;
 int NFP_NET_CFG_TXR_VEC (unsigned int) ;
 int ilog2 (int ) ;
 int nn_writeb (struct nfp_net*,int ,int ) ;
 int nn_writeq (struct nfp_net*,int ,int ) ;

__attribute__((used)) static void
nfp_net_tx_ring_hw_cfg_write(struct nfp_net *nn,
        struct nfp_net_tx_ring *tx_ring, unsigned int idx)
{
 nn_writeq(nn, NFP_NET_CFG_TXR_ADDR(idx), tx_ring->dma);
 nn_writeb(nn, NFP_NET_CFG_TXR_SZ(idx), ilog2(tx_ring->cnt));
 nn_writeb(nn, NFP_NET_CFG_TXR_VEC(idx), tx_ring->r_vec->irq_entry);
}

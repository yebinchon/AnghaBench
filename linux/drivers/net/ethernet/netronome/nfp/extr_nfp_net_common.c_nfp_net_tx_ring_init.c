
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_tx_ring {unsigned int idx; int is_xdp; int qcidx; scalar_t__ qcp_q; struct nfp_net_r_vector* r_vec; } ;
struct nfp_net_r_vector {int tx_sync; struct nfp_net* nfp_net; } ;
struct nfp_net {int stride_tx; scalar_t__ tx_bar; } ;


 scalar_t__ NFP_QCP_QUEUE_OFF (int) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static void
nfp_net_tx_ring_init(struct nfp_net_tx_ring *tx_ring,
       struct nfp_net_r_vector *r_vec, unsigned int idx,
       bool is_xdp)
{
 struct nfp_net *nn = r_vec->nfp_net;

 tx_ring->idx = idx;
 tx_ring->r_vec = r_vec;
 tx_ring->is_xdp = is_xdp;
 u64_stats_init(&tx_ring->r_vec->tx_sync);

 tx_ring->qcidx = tx_ring->idx * nn->stride_tx;
 tx_ring->qcp_q = nn->tx_bar + NFP_QCP_QUEUE_OFF(tx_ring->qcidx);
}

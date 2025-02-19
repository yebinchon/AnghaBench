
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfp_net_tx_ring {int qcp_rd_p; int rd_p; scalar_t__ wr_p; scalar_t__ cnt; TYPE_1__* txbufs; int qcp_q; struct nfp_net_r_vector* r_vec; } ;
struct nfp_net_r_vector {int tx_pkts; int tx_sync; int tx_bytes; } ;
struct TYPE_2__ {int real_len; } ;


 void* D_IDX (struct nfp_net_tx_ring*,int) ;
 int NFP_NET_XDP_MAX_COMPLETE ;
 int WARN_ONCE (int,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int min (int,int) ;
 int nfp_qcp_rd_ptr_read (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static bool nfp_net_xdp_complete(struct nfp_net_tx_ring *tx_ring)
{
 struct nfp_net_r_vector *r_vec = tx_ring->r_vec;
 u32 done_pkts = 0, done_bytes = 0;
 bool done_all;
 int idx, todo;
 u32 qcp_rd_p;


 qcp_rd_p = nfp_qcp_rd_ptr_read(tx_ring->qcp_q);

 if (qcp_rd_p == tx_ring->qcp_rd_p)
  return 1;

 todo = D_IDX(tx_ring, qcp_rd_p - tx_ring->qcp_rd_p);

 done_all = todo <= NFP_NET_XDP_MAX_COMPLETE;
 todo = min(todo, NFP_NET_XDP_MAX_COMPLETE);

 tx_ring->qcp_rd_p = D_IDX(tx_ring, tx_ring->qcp_rd_p + todo);

 done_pkts = todo;
 while (todo--) {
  idx = D_IDX(tx_ring, tx_ring->rd_p);
  tx_ring->rd_p++;

  done_bytes += tx_ring->txbufs[idx].real_len;
 }

 u64_stats_update_begin(&r_vec->tx_sync);
 r_vec->tx_bytes += done_bytes;
 r_vec->tx_pkts += done_pkts;
 u64_stats_update_end(&r_vec->tx_sync);

 WARN_ONCE(tx_ring->wr_p - tx_ring->rd_p > tx_ring->cnt,
    "XDP TX ring corruption rd_p=%u wr_p=%u cnt=%u\n",
    tx_ring->rd_p, tx_ring->wr_p, tx_ring->cnt);

 return done_all;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_xdpsq_stats {scalar_t__ cqes; scalar_t__ err; scalar_t__ full; scalar_t__ inlnw; scalar_t__ mpwqe; scalar_t__ xmit; scalar_t__ nops; } ;
struct mlx5e_sw_stats {int tx_cqes; int tx_tls_drop_bypass_req; int tx_tls_drop_no_sync_data; int tx_tls_skip_no_sync_data; int tx_tls_resync_bytes; int tx_tls_dump_packets; int tx_tls_dump_bytes; int tx_tls_ooo; int tx_tls_ctx; int tx_tls_encrypted_bytes; int tx_tls_encrypted_packets; int tx_csum_partial; int tx_csum_none; int tx_csum_partial_inner; int tx_xmit_more; int tx_recover; int tx_cqe_err; int tx_queue_dropped; int tx_queue_wake; int tx_queue_stopped; int tx_nop; int tx_added_vlan_packets; int tx_tso_inner_bytes; int tx_tso_inner_packets; int tx_tso_bytes; int tx_tso_packets; int tx_bytes; int tx_packets; int tx_xsk_cqes; int tx_xsk_err; int tx_xsk_full; int tx_xsk_inlnw; int tx_xsk_mpwqe; int tx_xsk_xmit; int rx_xsk_arfs_err; int rx_xsk_congst_umr; int rx_xsk_cqe_compress_pkts; int rx_xsk_cqe_compress_blks; int rx_xsk_buff_alloc_err; int rx_xsk_oversize_pkts_sw_drop; int rx_xsk_mpwqe_filler_strides; int rx_xsk_mpwqe_filler_cqes; int rx_xsk_wqe_err; int rx_xsk_xdp_redirect; int rx_xsk_xdp_drop; int rx_xsk_removed_vlan_packets; int rx_xsk_ecn_mark; int rx_xsk_csum_none; int rx_xsk_csum_unnecessary_inner; int rx_xsk_csum_unnecessary; int rx_xsk_csum_complete; int rx_xsk_bytes; int rx_xsk_packets; int tx_xdp_cqes; int tx_xdp_err; int tx_xdp_full; int tx_xdp_nops; int tx_xdp_inlnw; int tx_xdp_mpwqe; int tx_xdp_xmit; int ch_eq_rearm; int ch_force_irq; int ch_aff_change; int ch_arm; int ch_poll; int ch_events; int rx_recover; int rx_arfs_err; int rx_congst_umr; int rx_cache_waive; int rx_cache_busy; int rx_cache_empty; int rx_cache_full; int rx_cache_reuse; int rx_cqe_compress_pkts; int rx_cqe_compress_blks; int rx_buff_alloc_err; int rx_oversize_pkts_sw_drop; int rx_mpwqe_filler_strides; int rx_mpwqe_filler_cqes; int rx_wqe_err; int rx_xdp_tx_cqe; int rx_xdp_tx_err; int rx_xdp_tx_full; int rx_xdp_tx_nops; int rx_xdp_tx_inlnw; int rx_xdp_tx_mpwqe; int rx_xdp_tx_xmit; int rx_xdp_redirect; int rx_xdp_drop; int rx_csum_unnecessary_inner; int rx_csum_unnecessary; int rx_csum_complete_tail_slow; int rx_csum_complete_tail; int rx_csum_complete; int rx_csum_none; int rx_removed_vlan_packets; int rx_ecn_mark; int rx_lro_bytes; int rx_lro_packets; int rx_bytes; int rx_packets; } ;
struct mlx5e_sq_stats {scalar_t__ cqes; scalar_t__ tls_drop_bypass_req; scalar_t__ tls_drop_no_sync_data; scalar_t__ tls_skip_no_sync_data; scalar_t__ tls_resync_bytes; scalar_t__ tls_dump_packets; scalar_t__ tls_dump_bytes; scalar_t__ tls_ooo; scalar_t__ tls_ctx; scalar_t__ tls_encrypted_bytes; scalar_t__ tls_encrypted_packets; scalar_t__ csum_partial; scalar_t__ csum_none; scalar_t__ csum_partial_inner; scalar_t__ xmit_more; scalar_t__ recover; scalar_t__ cqe_err; scalar_t__ dropped; scalar_t__ wake; scalar_t__ stopped; scalar_t__ nop; scalar_t__ added_vlan_packets; scalar_t__ tso_inner_bytes; scalar_t__ tso_inner_packets; scalar_t__ tso_bytes; scalar_t__ tso_packets; scalar_t__ bytes; scalar_t__ packets; } ;
struct mlx5e_rq_stats {scalar_t__ arfs_err; scalar_t__ congst_umr; scalar_t__ cqe_compress_pkts; scalar_t__ cqe_compress_blks; scalar_t__ buff_alloc_err; scalar_t__ oversize_pkts_sw_drop; scalar_t__ mpwqe_filler_strides; scalar_t__ mpwqe_filler_cqes; scalar_t__ wqe_err; scalar_t__ xdp_redirect; scalar_t__ xdp_drop; scalar_t__ removed_vlan_packets; scalar_t__ ecn_mark; scalar_t__ csum_none; scalar_t__ csum_unnecessary_inner; scalar_t__ csum_unnecessary; scalar_t__ csum_complete; scalar_t__ bytes; scalar_t__ packets; scalar_t__ recover; scalar_t__ cache_waive; scalar_t__ cache_busy; scalar_t__ cache_empty; scalar_t__ cache_full; scalar_t__ cache_reuse; scalar_t__ csum_complete_tail_slow; scalar_t__ csum_complete_tail; scalar_t__ lro_bytes; scalar_t__ lro_packets; } ;
struct TYPE_2__ {struct mlx5e_sw_stats sw; } ;
struct mlx5e_priv {int max_nch; int max_opened_tc; struct mlx5e_channel_stats* channel_stats; TYPE_1__ stats; } ;
struct mlx5e_ch_stats {scalar_t__ eq_rearm; scalar_t__ force_irq; scalar_t__ aff_change; scalar_t__ arm; scalar_t__ poll; scalar_t__ events; } ;
struct mlx5e_channel_stats {struct mlx5e_sq_stats* sq; struct mlx5e_ch_stats ch; struct mlx5e_rq_stats rq; struct mlx5e_rq_stats xskrq; struct mlx5e_xdpsq_stats xsksq; struct mlx5e_xdpsq_stats rq_xdpsq; struct mlx5e_xdpsq_stats xdpsq; } ;


 int memset (struct mlx5e_sw_stats*,int ,int) ;

__attribute__((used)) static void mlx5e_grp_sw_update_stats(struct mlx5e_priv *priv)
{
 struct mlx5e_sw_stats *s = &priv->stats.sw;
 int i;

 memset(s, 0, sizeof(*s));

 for (i = 0; i < priv->max_nch; i++) {
  struct mlx5e_channel_stats *channel_stats =
   &priv->channel_stats[i];
  struct mlx5e_xdpsq_stats *xdpsq_red_stats = &channel_stats->xdpsq;
  struct mlx5e_xdpsq_stats *xdpsq_stats = &channel_stats->rq_xdpsq;
  struct mlx5e_xdpsq_stats *xsksq_stats = &channel_stats->xsksq;
  struct mlx5e_rq_stats *xskrq_stats = &channel_stats->xskrq;
  struct mlx5e_rq_stats *rq_stats = &channel_stats->rq;
  struct mlx5e_ch_stats *ch_stats = &channel_stats->ch;
  int j;

  s->rx_packets += rq_stats->packets;
  s->rx_bytes += rq_stats->bytes;
  s->rx_lro_packets += rq_stats->lro_packets;
  s->rx_lro_bytes += rq_stats->lro_bytes;
  s->rx_ecn_mark += rq_stats->ecn_mark;
  s->rx_removed_vlan_packets += rq_stats->removed_vlan_packets;
  s->rx_csum_none += rq_stats->csum_none;
  s->rx_csum_complete += rq_stats->csum_complete;
  s->rx_csum_complete_tail += rq_stats->csum_complete_tail;
  s->rx_csum_complete_tail_slow += rq_stats->csum_complete_tail_slow;
  s->rx_csum_unnecessary += rq_stats->csum_unnecessary;
  s->rx_csum_unnecessary_inner += rq_stats->csum_unnecessary_inner;
  s->rx_xdp_drop += rq_stats->xdp_drop;
  s->rx_xdp_redirect += rq_stats->xdp_redirect;
  s->rx_xdp_tx_xmit += xdpsq_stats->xmit;
  s->rx_xdp_tx_mpwqe += xdpsq_stats->mpwqe;
  s->rx_xdp_tx_inlnw += xdpsq_stats->inlnw;
  s->rx_xdp_tx_nops += xdpsq_stats->nops;
  s->rx_xdp_tx_full += xdpsq_stats->full;
  s->rx_xdp_tx_err += xdpsq_stats->err;
  s->rx_xdp_tx_cqe += xdpsq_stats->cqes;
  s->rx_wqe_err += rq_stats->wqe_err;
  s->rx_mpwqe_filler_cqes += rq_stats->mpwqe_filler_cqes;
  s->rx_mpwqe_filler_strides += rq_stats->mpwqe_filler_strides;
  s->rx_oversize_pkts_sw_drop += rq_stats->oversize_pkts_sw_drop;
  s->rx_buff_alloc_err += rq_stats->buff_alloc_err;
  s->rx_cqe_compress_blks += rq_stats->cqe_compress_blks;
  s->rx_cqe_compress_pkts += rq_stats->cqe_compress_pkts;
  s->rx_cache_reuse += rq_stats->cache_reuse;
  s->rx_cache_full += rq_stats->cache_full;
  s->rx_cache_empty += rq_stats->cache_empty;
  s->rx_cache_busy += rq_stats->cache_busy;
  s->rx_cache_waive += rq_stats->cache_waive;
  s->rx_congst_umr += rq_stats->congst_umr;
  s->rx_arfs_err += rq_stats->arfs_err;
  s->rx_recover += rq_stats->recover;
  s->ch_events += ch_stats->events;
  s->ch_poll += ch_stats->poll;
  s->ch_arm += ch_stats->arm;
  s->ch_aff_change += ch_stats->aff_change;
  s->ch_force_irq += ch_stats->force_irq;
  s->ch_eq_rearm += ch_stats->eq_rearm;

  s->tx_xdp_xmit += xdpsq_red_stats->xmit;
  s->tx_xdp_mpwqe += xdpsq_red_stats->mpwqe;
  s->tx_xdp_inlnw += xdpsq_red_stats->inlnw;
  s->tx_xdp_nops += xdpsq_red_stats->nops;
  s->tx_xdp_full += xdpsq_red_stats->full;
  s->tx_xdp_err += xdpsq_red_stats->err;
  s->tx_xdp_cqes += xdpsq_red_stats->cqes;

  s->rx_xsk_packets += xskrq_stats->packets;
  s->rx_xsk_bytes += xskrq_stats->bytes;
  s->rx_xsk_csum_complete += xskrq_stats->csum_complete;
  s->rx_xsk_csum_unnecessary += xskrq_stats->csum_unnecessary;
  s->rx_xsk_csum_unnecessary_inner += xskrq_stats->csum_unnecessary_inner;
  s->rx_xsk_csum_none += xskrq_stats->csum_none;
  s->rx_xsk_ecn_mark += xskrq_stats->ecn_mark;
  s->rx_xsk_removed_vlan_packets += xskrq_stats->removed_vlan_packets;
  s->rx_xsk_xdp_drop += xskrq_stats->xdp_drop;
  s->rx_xsk_xdp_redirect += xskrq_stats->xdp_redirect;
  s->rx_xsk_wqe_err += xskrq_stats->wqe_err;
  s->rx_xsk_mpwqe_filler_cqes += xskrq_stats->mpwqe_filler_cqes;
  s->rx_xsk_mpwqe_filler_strides += xskrq_stats->mpwqe_filler_strides;
  s->rx_xsk_oversize_pkts_sw_drop += xskrq_stats->oversize_pkts_sw_drop;
  s->rx_xsk_buff_alloc_err += xskrq_stats->buff_alloc_err;
  s->rx_xsk_cqe_compress_blks += xskrq_stats->cqe_compress_blks;
  s->rx_xsk_cqe_compress_pkts += xskrq_stats->cqe_compress_pkts;
  s->rx_xsk_congst_umr += xskrq_stats->congst_umr;
  s->rx_xsk_arfs_err += xskrq_stats->arfs_err;
  s->tx_xsk_xmit += xsksq_stats->xmit;
  s->tx_xsk_mpwqe += xsksq_stats->mpwqe;
  s->tx_xsk_inlnw += xsksq_stats->inlnw;
  s->tx_xsk_full += xsksq_stats->full;
  s->tx_xsk_err += xsksq_stats->err;
  s->tx_xsk_cqes += xsksq_stats->cqes;

  for (j = 0; j < priv->max_opened_tc; j++) {
   struct mlx5e_sq_stats *sq_stats = &channel_stats->sq[j];

   s->tx_packets += sq_stats->packets;
   s->tx_bytes += sq_stats->bytes;
   s->tx_tso_packets += sq_stats->tso_packets;
   s->tx_tso_bytes += sq_stats->tso_bytes;
   s->tx_tso_inner_packets += sq_stats->tso_inner_packets;
   s->tx_tso_inner_bytes += sq_stats->tso_inner_bytes;
   s->tx_added_vlan_packets += sq_stats->added_vlan_packets;
   s->tx_nop += sq_stats->nop;
   s->tx_queue_stopped += sq_stats->stopped;
   s->tx_queue_wake += sq_stats->wake;
   s->tx_queue_dropped += sq_stats->dropped;
   s->tx_cqe_err += sq_stats->cqe_err;
   s->tx_recover += sq_stats->recover;
   s->tx_xmit_more += sq_stats->xmit_more;
   s->tx_csum_partial_inner += sq_stats->csum_partial_inner;
   s->tx_csum_none += sq_stats->csum_none;
   s->tx_csum_partial += sq_stats->csum_partial;
   s->tx_cqes += sq_stats->cqes;
  }
 }
}

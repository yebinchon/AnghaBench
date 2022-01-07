
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mlx5e_xdpsq_stats {int mpwqe; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct mlx5e_xdp_mpwqe {scalar_t__ pkt_count; int ds_count; TYPE_1__* wqe; } ;
struct mlx5e_xdpsq {int pc; struct mlx5_wq_cyc wq; struct mlx5e_xdpsq_stats* stats; struct mlx5e_xdp_mpwqe mpwqe; } ;
struct TYPE_2__ {int data; } ;


 int MLX5E_XDP_TX_EMPTY_DS_COUNT ;
 scalar_t__ MLX5_SEND_WQE_MAX_WQEBBS ;
 scalar_t__ mlx5_wq_cyc_ctr2ix (struct mlx5_wq_cyc*,int ) ;
 scalar_t__ mlx5_wq_cyc_get_contig_wqebbs (struct mlx5_wq_cyc*,scalar_t__) ;
 int mlx5e_fill_xdpsq_frag_edge (struct mlx5e_xdpsq*,struct mlx5_wq_cyc*,scalar_t__,scalar_t__) ;
 int mlx5e_xdp_update_inline_state (struct mlx5e_xdpsq*) ;
 TYPE_1__* mlx5e_xdpsq_fetch_wqe (struct mlx5e_xdpsq*,scalar_t__*) ;
 int prefetchw (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mlx5e_xdp_mpwqe_session_start(struct mlx5e_xdpsq *sq)
{
 struct mlx5e_xdp_mpwqe *session = &sq->mpwqe;
 struct mlx5e_xdpsq_stats *stats = sq->stats;
 struct mlx5_wq_cyc *wq = &sq->wq;
 u16 pi, contig_wqebbs;

 pi = mlx5_wq_cyc_ctr2ix(wq, sq->pc);
 contig_wqebbs = mlx5_wq_cyc_get_contig_wqebbs(wq, pi);

 if (unlikely(contig_wqebbs < MLX5_SEND_WQE_MAX_WQEBBS))
  mlx5e_fill_xdpsq_frag_edge(sq, wq, pi, contig_wqebbs);

 session->wqe = mlx5e_xdpsq_fetch_wqe(sq, &pi);

 prefetchw(session->wqe->data);
 session->ds_count = MLX5E_XDP_TX_EMPTY_DS_COUNT;
 session->pkt_count = 0;

 mlx5e_xdp_update_inline_state(sq);

 stats->mpwqe++;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_xdpsq_stats {int xmit; int err; } ;
struct TYPE_2__ {int xdpi_fifo; } ;
struct mlx5e_xdp_mpwqe {scalar_t__ ds_count; } ;
struct mlx5e_xdpsq {scalar_t__ hw_mtu; TYPE_1__ db; struct mlx5e_xdpsq_stats* stats; struct mlx5e_xdp_mpwqe mpwqe; } ;
struct mlx5e_xdp_xmit_data {scalar_t__ len; } ;
struct mlx5e_xdp_info {int dummy; } ;


 int MLX5E_XDP_CHECK_START_MPWQE ;
 scalar_t__ MLX5E_XDP_MPW_MAX_NUM_DS ;
 int mlx5e_xdp_mpwqe_add_dseg (struct mlx5e_xdpsq*,struct mlx5e_xdp_xmit_data*,struct mlx5e_xdpsq_stats*) ;
 int mlx5e_xdp_mpwqe_complete (struct mlx5e_xdpsq*) ;
 int mlx5e_xdp_mpwqe_session_start (struct mlx5e_xdpsq*) ;
 scalar_t__ mlx5e_xdp_no_room_for_inline_pkt (struct mlx5e_xdp_mpwqe*) ;
 int mlx5e_xdpi_fifo_push (int *,struct mlx5e_xdp_info*) ;
 int mlx5e_xmit_xdp_frame_check_mpwqe (struct mlx5e_xdpsq*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool mlx5e_xmit_xdp_frame_mpwqe(struct mlx5e_xdpsq *sq,
           struct mlx5e_xdp_xmit_data *xdptxd,
           struct mlx5e_xdp_info *xdpi,
           int check_result)
{
 struct mlx5e_xdp_mpwqe *session = &sq->mpwqe;
 struct mlx5e_xdpsq_stats *stats = sq->stats;

 if (unlikely(xdptxd->len > sq->hw_mtu)) {
  stats->err++;
  return 0;
 }

 if (!check_result)
  check_result = mlx5e_xmit_xdp_frame_check_mpwqe(sq);
 if (unlikely(check_result < 0))
  return 0;

 if (check_result == MLX5E_XDP_CHECK_START_MPWQE) {




  mlx5e_xdp_mpwqe_session_start(sq);
 }

 mlx5e_xdp_mpwqe_add_dseg(sq, xdptxd, stats);

 if (unlikely(mlx5e_xdp_no_room_for_inline_pkt(session) ||
       session->ds_count == MLX5E_XDP_MPW_MAX_NUM_DS))
  mlx5e_xdp_mpwqe_complete(sq);

 mlx5e_xdpi_fifo_push(&sq->db.xdpi_fifo, xdpi);
 stats->xmit++;
 return 1;
}

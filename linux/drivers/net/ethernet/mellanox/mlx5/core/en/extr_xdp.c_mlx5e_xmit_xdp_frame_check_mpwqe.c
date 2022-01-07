
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wqe; } ;
struct mlx5e_xdpsq {TYPE_2__* stats; int pc; int cc; int wq; TYPE_1__ mpwqe; } ;
struct TYPE_4__ {int full; } ;


 int EBUSY ;
 int MLX5E_XDPSQ_STOP_ROOM ;
 int MLX5E_XDP_CHECK_OK ;
 int MLX5E_XDP_CHECK_START_MPWQE ;
 int mlx5e_wqc_has_room_for (int *,int ,int ,int ) ;
 int mlx5e_xmit_xdp_doorbell (struct mlx5e_xdpsq*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mlx5e_xmit_xdp_frame_check_mpwqe(struct mlx5e_xdpsq *sq)
{
 if (unlikely(!sq->mpwqe.wqe)) {
  if (unlikely(!mlx5e_wqc_has_room_for(&sq->wq, sq->cc, sq->pc,
           MLX5E_XDPSQ_STOP_ROOM))) {

   mlx5e_xmit_xdp_doorbell(sq);
   sq->stats->full++;
   return -EBUSY;
  }

  return MLX5E_XDP_CHECK_START_MPWQE;
 }

 return MLX5E_XDP_CHECK_OK;
}

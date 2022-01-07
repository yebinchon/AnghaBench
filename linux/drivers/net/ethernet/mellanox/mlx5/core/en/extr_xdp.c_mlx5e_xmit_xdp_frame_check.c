
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_xdpsq {TYPE_1__* stats; int pc; int cc; int wq; } ;
struct TYPE_2__ {int full; } ;


 int EBUSY ;
 int MLX5E_XDP_CHECK_OK ;
 int mlx5e_wqc_has_room_for (int *,int ,int ,int) ;
 int mlx5e_xmit_xdp_doorbell (struct mlx5e_xdpsq*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mlx5e_xmit_xdp_frame_check(struct mlx5e_xdpsq *sq)
{
 if (unlikely(!mlx5e_wqc_has_room_for(&sq->wq, sq->cc, sq->pc, 1))) {

  mlx5e_xmit_xdp_doorbell(sq);
  sq->stats->full++;
  return -EBUSY;
 }

 return MLX5E_XDP_CHECK_OK;
}

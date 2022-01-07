
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct mlx5e_tx_wqe {int ctrl; } ;
struct TYPE_4__ {TYPE_1__* ico_wqe; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct mlx5e_icosq {int uar_map; int pc; int sqn; TYPE_2__ db; struct mlx5_wq_cyc wq; } ;
struct TYPE_3__ {int opcode; } ;


 int MLX5_OPCODE_NOP ;
 size_t mlx5_wq_cyc_ctr2ix (struct mlx5_wq_cyc*,int ) ;
 int mlx5e_notify_hw (struct mlx5_wq_cyc*,int ,int ,int *) ;
 struct mlx5e_tx_wqe* mlx5e_post_nop (struct mlx5_wq_cyc*,int ,int *) ;

void mlx5e_trigger_irq(struct mlx5e_icosq *sq)
{
 struct mlx5_wq_cyc *wq = &sq->wq;
 struct mlx5e_tx_wqe *nopwqe;
 u16 pi = mlx5_wq_cyc_ctr2ix(wq, sq->pc);

 sq->db.ico_wqe[pi].opcode = MLX5_OPCODE_NOP;
 nopwqe = mlx5e_post_nop(wq, sq->sqn, &sq->pc);
 mlx5e_notify_hw(wq, sq->pc, sq->uar_map, &nopwqe->ctrl);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct mlx5e_sq_wqe_info {int opcode; } ;
struct TYPE_2__ {struct mlx5e_sq_wqe_info* ico_wqe; } ;
struct mlx5e_icosq {int pc; int sqn; TYPE_1__ db; } ;
struct mlx5_wq_cyc {int dummy; } ;


 int MLX5_OPCODE_NOP ;
 int mlx5e_post_nop (struct mlx5_wq_cyc*,int ,int *) ;

__attribute__((used)) static inline void mlx5e_fill_icosq_frag_edge(struct mlx5e_icosq *sq,
           struct mlx5_wq_cyc *wq,
           u16 pi, u16 nnops)
{
 struct mlx5e_sq_wqe_info *edge_wi, *wi = &sq->db.ico_wqe[pi];

 edge_wi = wi + nnops;


 for (; wi < edge_wi; wi++) {
  wi->opcode = MLX5_OPCODE_NOP;
  mlx5e_post_nop(wq, sq->sqn, &sq->pc);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_4__ {struct mlx5e_xdp_wqe_info* wqe_info; } ;
struct mlx5e_xdpsq {TYPE_1__* stats; int pc; int sqn; TYPE_2__ db; } ;
struct mlx5e_xdp_wqe_info {int num_wqebbs; scalar_t__ num_pkts; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct TYPE_3__ {int nops; } ;


 int mlx5e_post_nop (struct mlx5_wq_cyc*,int ,int *) ;

__attribute__((used)) static inline void
mlx5e_fill_xdpsq_frag_edge(struct mlx5e_xdpsq *sq, struct mlx5_wq_cyc *wq,
      u16 pi, u16 nnops)
{
 struct mlx5e_xdp_wqe_info *edge_wi, *wi = &sq->db.wqe_info[pi];

 edge_wi = wi + nnops;

 for (; wi < edge_wi; wi++) {
  wi->num_wqebbs = 1;
  wi->num_pkts = 0;
  mlx5e_post_nop(wq, sq->sqn, &sq->pc);
 }

 sq->stats->nops += nnops;
}

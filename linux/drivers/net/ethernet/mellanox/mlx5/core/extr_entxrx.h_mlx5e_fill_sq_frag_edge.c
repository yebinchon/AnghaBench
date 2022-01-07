
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_4__ {struct mlx5e_tx_wqe_info* wqe_info; } ;
struct mlx5e_txqsq {TYPE_1__* stats; int pc; int sqn; TYPE_2__ db; } ;
struct mlx5e_tx_wqe_info {int num_wqebbs; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct TYPE_3__ {int nop; } ;


 int memset (struct mlx5e_tx_wqe_info*,int ,int) ;
 int mlx5e_post_nop (struct mlx5_wq_cyc*,int ,int *) ;

__attribute__((used)) static inline void
mlx5e_fill_sq_frag_edge(struct mlx5e_txqsq *sq, struct mlx5_wq_cyc *wq,
   u16 pi, u16 nnops)
{
 struct mlx5e_tx_wqe_info *edge_wi, *wi = &sq->db.wqe_info[pi];

 edge_wi = wi + nnops;


 for (; wi < edge_wi; wi++) {
  memset(wi, 0, sizeof(*wi));
  wi->num_wqebbs = 1;
  mlx5e_post_nop(wq, sq->sqn, &sq->pc);
 }
 sq->stats->nop += nnops;
}

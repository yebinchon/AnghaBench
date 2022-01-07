
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_wq_cyc {int dummy; } ;
struct mlx5e_txqsq {int pc; int sqn; struct mlx5_wq_cyc wq; } ;


 int mlx5_wq_cyc_ctr2ix (struct mlx5_wq_cyc*,int ) ;
 int mlx5e_post_nop_fence (struct mlx5_wq_cyc*,int ,int *) ;
 int tx_fill_wi (struct mlx5e_txqsq*,int ,int,int ,int *) ;

__attribute__((used)) static void tx_post_fence_nop(struct mlx5e_txqsq *sq)
{
 struct mlx5_wq_cyc *wq = &sq->wq;
 u16 pi = mlx5_wq_cyc_ctr2ix(wq, sq->pc);

 tx_fill_wi(sq, pi, 1, 0, ((void*)0));

 mlx5e_post_nop_fence(wq, sq->sqn, &sq->pc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_wq_cyc {int dummy; } ;
struct mlx5e_xdpsq {int pc; struct mlx5_wq_cyc wq; } ;
struct mlx5e_tx_wqe {int dummy; } ;


 int memset (struct mlx5e_tx_wqe*,int ,int) ;
 int mlx5_wq_cyc_ctr2ix (struct mlx5_wq_cyc*,int ) ;
 struct mlx5e_tx_wqe* mlx5_wq_cyc_get_wqe (struct mlx5_wq_cyc*,int ) ;

__attribute__((used)) static inline struct mlx5e_tx_wqe *
mlx5e_xdpsq_fetch_wqe(struct mlx5e_xdpsq *sq, u16 *pi)
{
 struct mlx5_wq_cyc *wq = &sq->wq;
 struct mlx5e_tx_wqe *wqe;

 *pi = mlx5_wq_cyc_ctr2ix(wq, sq->pc);
 wqe = mlx5_wq_cyc_get_wqe(wq, *pi);
 memset(wqe, 0, sizeof(*wqe));

 return wqe;
}

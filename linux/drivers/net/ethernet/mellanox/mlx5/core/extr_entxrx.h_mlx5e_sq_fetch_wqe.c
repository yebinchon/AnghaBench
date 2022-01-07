
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_wq_cyc {int dummy; } ;
struct mlx5e_txqsq {int pc; struct mlx5_wq_cyc wq; } ;


 int memset (void*,int ,size_t) ;
 int mlx5_wq_cyc_ctr2ix (struct mlx5_wq_cyc*,int ) ;
 void* mlx5_wq_cyc_get_wqe (struct mlx5_wq_cyc*,int ) ;

__attribute__((used)) static inline void *
mlx5e_sq_fetch_wqe(struct mlx5e_txqsq *sq, size_t size, u16 *pi)
{
 struct mlx5_wq_cyc *wq = &sq->wq;
 void *wqe;

 *pi = mlx5_wq_cyc_ctr2ix(wq, sq->pc);
 wqe = mlx5_wq_cyc_get_wqe(wq, *pi);
 memset(wqe, 0, size);

 return wqe;
}

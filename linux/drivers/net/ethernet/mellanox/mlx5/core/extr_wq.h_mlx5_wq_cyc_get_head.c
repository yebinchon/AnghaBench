
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_wq_cyc {int wqe_ctr; } ;


 int mlx5_wq_cyc_ctr2ix (struct mlx5_wq_cyc*,int ) ;

__attribute__((used)) static inline u16 mlx5_wq_cyc_get_head(struct mlx5_wq_cyc *wq)
{
 return mlx5_wq_cyc_ctr2ix(wq, wq->wqe_ctr);
}

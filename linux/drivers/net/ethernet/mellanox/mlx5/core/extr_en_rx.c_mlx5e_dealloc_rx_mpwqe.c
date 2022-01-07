
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {struct mlx5e_mpw_info* info; } ;
struct mlx5e_rq {TYPE_1__ mpwqe; } ;
struct mlx5e_mpw_info {int dummy; } ;


 int mlx5e_free_rx_mpwqe (struct mlx5e_rq*,struct mlx5e_mpw_info*,int) ;

void mlx5e_dealloc_rx_mpwqe(struct mlx5e_rq *rq, u16 ix)
{
 struct mlx5e_mpw_info *wi = &rq->mpwqe.info[ix];

 mlx5e_free_rx_mpwqe(rq, wi, 0);
}

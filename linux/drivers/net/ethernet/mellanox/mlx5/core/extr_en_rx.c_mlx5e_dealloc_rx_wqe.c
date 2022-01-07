
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5e_wqe_frag_info {int dummy; } ;
struct mlx5e_rq {int dummy; } ;


 struct mlx5e_wqe_frag_info* get_frag (struct mlx5e_rq*,int ) ;
 int mlx5e_free_rx_wqe (struct mlx5e_rq*,struct mlx5e_wqe_frag_info*,int) ;

void mlx5e_dealloc_rx_wqe(struct mlx5e_rq *rq, u16 ix)
{
 struct mlx5e_wqe_frag_info *wi = get_frag(rq, ix);

 mlx5e_free_rx_wqe(rq, wi, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct mlx5_cqwq {int dummy; } ;
struct mlx5_cqe64 {scalar_t__ op_own; } ;


 scalar_t__ MLX5_CQE_OWNER_MASK ;
 int dma_rmb () ;
 int mlx5_cqwq_get_ci (struct mlx5_cqwq*) ;
 struct mlx5_cqe64* mlx5_cqwq_get_wqe (struct mlx5_cqwq*,int ) ;
 int mlx5_cqwq_get_wrap_cnt (struct mlx5_cqwq*) ;

__attribute__((used)) static inline struct mlx5_cqe64 *mlx5_cqwq_get_cqe(struct mlx5_cqwq *wq)
{
 u32 ci = mlx5_cqwq_get_ci(wq);
 struct mlx5_cqe64 *cqe = mlx5_cqwq_get_wqe(wq, ci);
 u8 cqe_ownership_bit = cqe->op_own & MLX5_CQE_OWNER_MASK;
 u8 sw_ownership_val = mlx5_cqwq_get_wrap_cnt(wq) & 1;

 if (cqe_ownership_bit != sw_ownership_val)
  return ((void*)0);


 dma_rmb();

 return cqe;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_cq_decomp {scalar_t__ mini_arr_idx; int mini_arr; } ;
struct mlx5_cqwq {int dummy; } ;


 int mlx5e_read_cqe_slot (struct mlx5_cqwq*,int ,int ) ;

__attribute__((used)) static inline void mlx5e_read_mini_arr_slot(struct mlx5_cqwq *wq,
         struct mlx5e_cq_decomp *cqd,
         u32 cqcc)
{
 mlx5e_read_cqe_slot(wq, cqcc, cqd->mini_arr);
 cqd->mini_arr_idx = 0;
}

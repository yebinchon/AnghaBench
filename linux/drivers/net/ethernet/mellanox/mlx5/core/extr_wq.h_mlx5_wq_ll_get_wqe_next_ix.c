
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_wqe_srq_next_seg {int next_wqe_index; } ;
struct mlx5_wq_ll {int dummy; } ;


 int be16_to_cpu (int ) ;
 struct mlx5_wqe_srq_next_seg* mlx5_wq_ll_get_wqe (struct mlx5_wq_ll*,int ) ;

__attribute__((used)) static inline u16 mlx5_wq_ll_get_wqe_next_ix(struct mlx5_wq_ll *wq, u16 ix)
{
 struct mlx5_wqe_srq_next_seg *wqe = mlx5_wq_ll_get_wqe(wq, ix);

 return be16_to_cpu(wqe->next_wqe_index);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_cqwq {int dummy; } ;
struct mlx5_cqe64 {int dummy; } ;


 int memcpy (void*,int ,int) ;
 int mlx5_cqwq_ctr2ix (struct mlx5_cqwq*,int ) ;
 int mlx5_cqwq_get_wqe (struct mlx5_cqwq*,int ) ;

__attribute__((used)) static inline void mlx5e_read_cqe_slot(struct mlx5_cqwq *wq,
           u32 cqcc, void *data)
{
 u32 ci = mlx5_cqwq_ctr2ix(wq, cqcc);

 memcpy(data, mlx5_cqwq_get_wqe(wq, ci), sizeof(struct mlx5_cqe64));
}

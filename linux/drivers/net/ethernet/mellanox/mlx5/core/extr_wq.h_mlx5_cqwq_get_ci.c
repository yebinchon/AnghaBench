
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_cqwq {int cc; } ;


 int mlx5_cqwq_ctr2ix (struct mlx5_cqwq*,int ) ;

__attribute__((used)) static inline u32 mlx5_cqwq_get_ci(struct mlx5_cqwq *wq)
{
 return mlx5_cqwq_ctr2ix(wq, wq->cc);
}

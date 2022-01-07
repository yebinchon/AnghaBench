
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cqwq {int cc; } ;



__attribute__((used)) static inline void mlx5_cqwq_pop(struct mlx5_cqwq *wq)
{
 wq->cc++;
}

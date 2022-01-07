
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wq_ll {int cur_sz; } ;



__attribute__((used)) static inline int mlx5_wq_ll_is_empty(struct mlx5_wq_ll *wq)
{
 return !wq->cur_sz;
}

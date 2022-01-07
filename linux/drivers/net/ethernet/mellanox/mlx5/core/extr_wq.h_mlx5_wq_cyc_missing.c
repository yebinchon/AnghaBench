
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wq_cyc {int sz; int cur_sz; } ;



__attribute__((used)) static inline int mlx5_wq_cyc_missing(struct mlx5_wq_cyc *wq)
{
 return wq->sz - wq->cur_sz;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wq_cyc {scalar_t__ cur_sz; scalar_t__ sz; } ;



__attribute__((used)) static inline int mlx5_wq_cyc_is_full(struct mlx5_wq_cyc *wq)
{
 return wq->cur_sz == wq->sz;
}

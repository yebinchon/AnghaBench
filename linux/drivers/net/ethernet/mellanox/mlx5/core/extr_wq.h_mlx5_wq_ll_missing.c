
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sz_m1; } ;
struct mlx5_wq_ll {int cur_sz; TYPE_1__ fbc; } ;



__attribute__((used)) static inline int mlx5_wq_ll_missing(struct mlx5_wq_ll *wq)
{
 return wq->fbc.sz_m1 - wq->cur_sz;
}

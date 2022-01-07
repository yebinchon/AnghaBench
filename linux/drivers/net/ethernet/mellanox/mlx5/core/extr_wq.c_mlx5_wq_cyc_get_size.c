
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ sz_m1; } ;
struct mlx5_wq_cyc {TYPE_1__ fbc; } ;



u32 mlx5_wq_cyc_get_size(struct mlx5_wq_cyc *wq)
{
 return (u32)wq->fbc.sz_m1 + 1;
}

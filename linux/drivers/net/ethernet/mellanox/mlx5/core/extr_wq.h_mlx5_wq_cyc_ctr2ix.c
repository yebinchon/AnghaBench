
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int sz_m1; } ;
struct mlx5_wq_cyc {TYPE_1__ fbc; } ;



__attribute__((used)) static inline u16 mlx5_wq_cyc_ctr2ix(struct mlx5_wq_cyc *wq, u16 ctr)
{
 return ctr & wq->fbc.sz_m1;
}

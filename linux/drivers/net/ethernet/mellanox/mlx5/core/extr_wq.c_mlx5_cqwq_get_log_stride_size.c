
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int log_stride; } ;
struct mlx5_cqwq {TYPE_1__ fbc; } ;



u8 mlx5_cqwq_get_log_stride_size(struct mlx5_cqwq *wq)
{
 return wq->fbc.log_stride;
}

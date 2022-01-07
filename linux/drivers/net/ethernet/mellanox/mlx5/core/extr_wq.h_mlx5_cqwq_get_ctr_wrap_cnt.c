
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int log_sz; } ;
struct mlx5_cqwq {TYPE_1__ fbc; } ;



__attribute__((used)) static inline u32 mlx5_cqwq_get_ctr_wrap_cnt(struct mlx5_cqwq *wq, u32 ctr)
{
 return ctr >> wq->fbc.log_sz;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int wq; } ;
struct TYPE_3__ {int wq; } ;
struct mlx5e_rq {int wq_type; TYPE_2__ wqe; TYPE_1__ mpwqe; } ;



 int mlx5_wq_cyc_get_size (int *) ;
 int mlx5_wq_ll_get_size (int *) ;

__attribute__((used)) static inline u32 mlx5e_rqwq_get_size(struct mlx5e_rq *rq)
{
 switch (rq->wq_type) {
 case 128:
  return mlx5_wq_ll_get_size(&rq->mpwqe.wq);
 default:
  return mlx5_wq_cyc_get_size(&rq->wqe.wq);
 }
}

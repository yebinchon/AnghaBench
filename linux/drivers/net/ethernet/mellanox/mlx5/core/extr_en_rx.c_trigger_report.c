
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_rq {int recover_work; TYPE_2__* channel; int state; } ;
struct mlx5_err_cqe {int syndrome; } ;
struct mlx5_cqe64 {int dummy; } ;
struct TYPE_4__ {TYPE_1__* priv; } ;
struct TYPE_3__ {int wq; } ;


 int MLX5E_RQ_STATE_RECOVERING ;
 scalar_t__ cqe_syndrome_needs_recover (int ) ;
 int queue_work (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void trigger_report(struct mlx5e_rq *rq, struct mlx5_cqe64 *cqe)
{
 struct mlx5_err_cqe *err_cqe = (struct mlx5_err_cqe *)cqe;

 if (cqe_syndrome_needs_recover(err_cqe->syndrome) &&
     !test_and_set_bit(MLX5E_RQ_STATE_RECOVERING, &rq->state))
  queue_work(rq->channel->priv->wq, &rq->recover_work);
}

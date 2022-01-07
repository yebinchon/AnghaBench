
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int work; } ;
struct mlx5e_rq {int recover_work; TYPE_3__* channel; TYPE_1__ dim; } ;
struct TYPE_5__ {int recover_work; } ;
struct TYPE_6__ {TYPE_2__ icosq; } ;


 int cancel_work_sync (int *) ;
 int mlx5e_destroy_rq (struct mlx5e_rq*) ;
 int mlx5e_free_rq (struct mlx5e_rq*) ;
 int mlx5e_free_rx_descs (struct mlx5e_rq*) ;

void mlx5e_close_rq(struct mlx5e_rq *rq)
{
 cancel_work_sync(&rq->dim.work);
 cancel_work_sync(&rq->channel->icosq.recover_work);
 cancel_work_sync(&rq->recover_work);
 mlx5e_destroy_rq(rq);
 mlx5e_free_rx_descs(rq);
 mlx5e_free_rq(rq);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_eqe {int dummy; } ;
struct mlx5_eq_tasklet {int lock; int list; } ;
struct TYPE_2__ {int list; struct mlx5_eq_tasklet* priv; } ;
struct mlx5_core_cq {TYPE_1__ tasklet_ctx; } ;


 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty_careful (int *) ;
 int mlx5_cq_hold (struct mlx5_core_cq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mlx5_add_cq_to_tasklet(struct mlx5_core_cq *cq,
       struct mlx5_eqe *eqe)
{
 unsigned long flags;
 struct mlx5_eq_tasklet *tasklet_ctx = cq->tasklet_ctx.priv;

 spin_lock_irqsave(&tasklet_ctx->lock, flags);





 if (list_empty_careful(&cq->tasklet_ctx.list)) {
  mlx5_cq_hold(cq);
  list_add_tail(&cq->tasklet_ctx.list, &tasklet_ctx->list);
 }
 spin_unlock_irqrestore(&tasklet_ctx->lock, flags);
}

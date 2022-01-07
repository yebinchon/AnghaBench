
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_eq_tasklet {int lock; int task; int list; } ;
struct TYPE_2__ {int list; struct mlx4_eq_tasklet* priv; } ;
struct mlx4_cq {TYPE_1__ tasklet_ctx; int refcount; } ;


 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 scalar_t__ list_empty_careful (int *) ;
 int refcount_inc (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void mlx4_add_cq_to_tasklet(struct mlx4_cq *cq)
{
 struct mlx4_eq_tasklet *tasklet_ctx = cq->tasklet_ctx.priv;
 unsigned long flags;
 bool kick;

 spin_lock_irqsave(&tasklet_ctx->lock, flags);





 if (list_empty_careful(&cq->tasklet_ctx.list)) {
  refcount_inc(&cq->refcount);
  kick = list_empty(&tasklet_ctx->list);
  list_add_tail(&cq->tasklet_ctx.list, &tasklet_ctx->list);
  if (kick)
   tasklet_schedule(&tasklet_ctx->task);
 }
 spin_unlock_irqrestore(&tasklet_ctx->lock, flags);
}

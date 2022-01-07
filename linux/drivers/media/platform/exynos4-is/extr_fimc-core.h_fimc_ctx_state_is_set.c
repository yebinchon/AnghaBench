
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fimc_ctx {int state; TYPE_1__* fimc_dev; } ;
struct TYPE_2__ {int slock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline bool fimc_ctx_state_is_set(u32 mask, struct fimc_ctx *ctx)
{
 unsigned long flags;
 bool ret;

 spin_lock_irqsave(&ctx->fimc_dev->slock, flags);
 ret = (ctx->state & mask) == mask;
 spin_unlock_irqrestore(&ctx->fimc_dev->slock, flags);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gsc_ctx {TYPE_1__* gsc_dev; int state; } ;
struct TYPE_2__ {int slock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void gsc_ctx_state_lock_clear(u32 state, struct gsc_ctx *ctx)
{
 unsigned long flags;

 spin_lock_irqsave(&ctx->gsc_dev->slock, flags);
 ctx->state &= ~state;
 spin_unlock_irqrestore(&ctx->gsc_dev->slock, flags);
}

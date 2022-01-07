
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_mdp_ctx {int slock; int state; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mtk_mdp_ctx_state_lock_set(struct mtk_mdp_ctx *ctx, u32 state)
{
 mutex_lock(&ctx->slock);
 ctx->state |= state;
 mutex_unlock(&ctx->slock);
}

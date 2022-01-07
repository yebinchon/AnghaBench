
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_mdp_ctx {int state; int slock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool mtk_mdp_ctx_state_is_set(struct mtk_mdp_ctx *ctx, u32 mask)
{
 bool ret;

 mutex_lock(&ctx->slock);
 ret = (ctx->state & mask) == mask;
 mutex_unlock(&ctx->slock);
 return ret;
}

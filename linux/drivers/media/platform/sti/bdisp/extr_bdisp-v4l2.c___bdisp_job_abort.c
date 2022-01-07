
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdisp_ctx {int state; } ;


 int BDISP_CTX_ABORT ;
 int BDISP_CTX_STOP_REQ ;
 int ETIMEDOUT ;
 int VB2_BUF_STATE_ERROR ;
 int bdisp_ctx_state_lock_clear (int,struct bdisp_ctx*) ;
 int bdisp_ctx_stop_req (struct bdisp_ctx*) ;
 int bdisp_job_finish (struct bdisp_ctx*,int ) ;

__attribute__((used)) static void __bdisp_job_abort(struct bdisp_ctx *ctx)
{
 int ret;

 ret = bdisp_ctx_stop_req(ctx);
 if ((ret == -ETIMEDOUT) || (ctx->state & BDISP_CTX_ABORT)) {
  bdisp_ctx_state_lock_clear(BDISP_CTX_STOP_REQ | BDISP_CTX_ABORT,
        ctx);
  bdisp_job_finish(ctx, VB2_BUF_STATE_ERROR);
 }
}

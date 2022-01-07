
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_ctx {int state; } ;


 int ETIMEDOUT ;
 int GSC_CTX_ABORT ;
 int GSC_CTX_STOP_REQ ;
 int VB2_BUF_STATE_ERROR ;
 int gsc_ctx_state_lock_clear (int,struct gsc_ctx*) ;
 int gsc_m2m_ctx_stop_req (struct gsc_ctx*) ;
 int gsc_m2m_job_finish (struct gsc_ctx*,int ) ;

__attribute__((used)) static void __gsc_m2m_job_abort(struct gsc_ctx *ctx)
{
 int ret;

 ret = gsc_m2m_ctx_stop_req(ctx);
 if ((ret == -ETIMEDOUT) || (ctx->state & GSC_CTX_ABORT)) {
  gsc_ctx_state_lock_clear(GSC_CTX_STOP_REQ | GSC_CTX_ABORT, ctx);
  gsc_m2m_job_finish(ctx, VB2_BUF_STATE_ERROR);
 }
}

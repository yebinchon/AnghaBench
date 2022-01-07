
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m2m_dev; } ;
struct gsc_dev {int irq_queue; TYPE_1__ m2m; } ;
struct gsc_ctx {struct gsc_dev* gsc_dev; } ;


 int ETIMEDOUT ;
 int GSC_CTX_STOP_REQ ;
 int GSC_SHUTDOWN_TIMEOUT ;
 int gsc_ctx_state_is_set (int ,struct gsc_ctx*) ;
 int gsc_ctx_state_lock_set (int ,struct gsc_ctx*) ;
 int gsc_m2m_pending (struct gsc_dev*) ;
 struct gsc_ctx* v4l2_m2m_get_curr_priv (int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int gsc_m2m_ctx_stop_req(struct gsc_ctx *ctx)
{
 struct gsc_ctx *curr_ctx;
 struct gsc_dev *gsc = ctx->gsc_dev;
 int ret;

 curr_ctx = v4l2_m2m_get_curr_priv(gsc->m2m.m2m_dev);
 if (!gsc_m2m_pending(gsc) || (curr_ctx != ctx))
  return 0;

 gsc_ctx_state_lock_set(GSC_CTX_STOP_REQ, ctx);
 ret = wait_event_timeout(gsc->irq_queue,
   !gsc_ctx_state_is_set(GSC_CTX_STOP_REQ, ctx),
   GSC_SHUTDOWN_TIMEOUT);

 return ret == 0 ? -ETIMEDOUT : ret;
}
